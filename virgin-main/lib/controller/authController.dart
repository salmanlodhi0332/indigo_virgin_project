import 'dart:async';
import 'dart:io';
import 'package:bot_toast/bot_toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:esim2/constants/token.dart';
import 'package:esim2/main.dart';
import 'package:esim2/service/ApiService.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart' as fb;
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthController extends GetxController {
  RxBool isloading = false.obs;
  RxBool hidepass = true.obs;
  String temporaryemail = '';
  String temporaryid = '';
  String temporarypassword = '';

  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  final CollectionReference userscollection =
      FirebaseFirestore.instance.collection('users');

  FirebaseAuth auth = FirebaseAuth.instance;

  // Forgot Password

  Future resetpassword(String email) async {
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
      BotToast.showText(text: "Password reset email sent");
      Get.toNamed('/forgotMailsentScreen');
    } on FirebaseAuthException catch (e) {
      BotToast.showText(text: "Error $e");
      Get.back();
    }
  }

  //  Google Signin
  Future<void> handleGoogleSignIn() async {
    try {
      await googleSignIn.signOut();
      final GoogleSignInAccount? googleSignInAccount =
          await googleSignIn.signIn();
      if (googleSignInAccount != null) {
        final GoogleSignInAuthentication googleSignInAuthentication =
            await googleSignInAccount.authentication;

        final AuthCredential credential = GoogleAuthProvider.credential(
          accessToken: googleSignInAuthentication.accessToken,
          idToken: googleSignInAuthentication.idToken,
        );
        await auth.signInWithCredential(credential);
        // Listen for Firebase authentication state changes
        auth.authStateChanges().listen((User? firebaseUser) async {
          if (firebaseUser == null) {
            BotToast.showText(text: "No user available");
          } else {
            // await usersCollection.doc(firebaseUser.uid).set({
            //   'userid': firebaseUser.uid,
            //   'email': firebaseUser.email,
            //   'username': '',
            //   'userpic': null
            // });
            GetStorage().write("userid", firebaseUser.uid);
            GetStorage().write("username", firebaseUser.displayName);
            GetStorage().write("useremail", firebaseUser.email);

            await addUser(firebaseUser.displayName ?? '', '');

            Get.offAllNamed('/home');
            // BotToast.showText(text: "Done Boss");
          }
        });
      }
    } on FirebaseAuthException catch (e) {
      print(e);
    } catch (error) {
      print(error);
      // print(error);
      BotToast.showText(text: "User Signed In");
      // Get.toNamed('/traveler_container_screen');
    }
  }

// Apple
  Future<void> handleAppleSignIn() async {
    try {
      // Perform the Apple sign-in request
      final result = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
        webAuthenticationOptions: WebAuthenticationOptions(
          clientId: 'your_client_id_here', // Replace with your client ID
          redirectUri: Uri.parse(
              'https://your-redirect-uri.com'), // Replace with your redirect URI
        ),
      );

      // Create an OAuthCredential using the Apple Sign-In result
      final OAuthCredential appleAuthCredential =
          OAuthProvider("apple.com").credential(
        idToken: result.identityToken,
        accessToken: result.authorizationCode,
      );

      // Sign in to Firebase with the Apple credentials
      await FirebaseAuth.instance.signInWithCredential(appleAuthCredential);

      // Listen for Firebase authentication state changes
      FirebaseAuth.instance
          .authStateChanges()
          .listen((User? firebaseUser) async {
        if (firebaseUser == null) {
          BotToast.showText(text: "No user available");
        } else {
          // Perform operations after successful sign-in
          GetStorage().write("userid", firebaseUser.uid);
          GetStorage().write("username", firebaseUser.displayName);
          // Get.offAll(const BottomsNavigation());
          Get.offAllNamed('/home');
        }
      });
    } catch (error) {
      // Handle errors during Apple sign-in
      BotToast.showText(text: "User Signed In");
      Get.toNamed('/traveler_container_screen');
      // print(error);
      // BotToast.showText(text: "Error signing in with Apple");
    }
  }

// Facebook
  Future<void> handleFacebookSignIn() async {
    try {
      await fb.FacebookAuth.instance.logOut();
      final result = await fb.FacebookAuth.i
          .login(permissions: ['public_profile', 'email']);
      // // Log out from Facebook if already signed in

      // Check if the login was successful
      if (result.status == fb.LoginStatus.success) {
        // Get the access token from the result
        final fb.AccessToken accessToken = result.accessToken!;

        // Create a FacebookAuthCredential using the access token
        final OAuthCredential facebookAuthCredential =
            FacebookAuthProvider.credential(accessToken.token);

        // Sign in to Firebase with the Facebook credentials
        await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential);

        // Listen for Firebase authentication state changes
        FirebaseAuth.instance
            .authStateChanges()
            .listen((User? firebaseUser) async {
          if (firebaseUser == null) {
            BotToast.showText(text: "No user available");
          } else {
            // Perform operations after successful sign-in
            GetStorage().write("userid", firebaseUser.uid);
            GetStorage().write("username", firebaseUser.displayName);
            await addUser(firebaseUser.displayName ?? '', '');
            Get.offAllNamed('/home');
            // Get.offAll(const BottomsNavigation());
          }
        });
      }
      // ignore: nullable_type_in_catch_clause
    } catch (error) {
      // print(error);
      // Handle other errors
      BotToast.showText(text: "User Signed In");
      // Get.toNamed('/home');

      // Get.toNamed('/traveler_container_screen');
      // print(error);
      // BotToast.showText(text: "Signed In");
    }
  }

  // Email Pass Sign In
  Future<void> handleLoginwithEmailPass(String email, String password) async {
    try {
      isloading.value = true;
      await auth.signInWithEmailAndPassword(email: email, password: password);
      // Listen for Firebase authentication state changes
      auth.authStateChanges().listen((User? firebaseUser) async {
        if (firebaseUser == null) {
          BotToast.showText(text: "No user available");
        } else {
          // Retrieve additional user data from Firestore
          DocumentSnapshot userData =
              await userscollection.doc(firebaseUser.uid).get();

          if (userData.exists) {
            GetStorage().write("userid", firebaseUser.uid);
            GetStorage().write("useremail", email);
            String firstName = userData.get('firstName');
            String lastName = userData.get('lastName');
            GetStorage().write("firstname", firstName);
            GetStorage().write("lastname", lastName);
            isloading.value = false;
            Get.offAllNamed('/home');
          } else {
            BotToast.showText(text: "No User Exists");
          }
        }
      });
      print('done something');
    } on SocketException {
      isloading.value = false;
      BotToast.showText(text: "Network Error");
    } on FirebaseAuthException catch (error) {
      isloading.value = false;
      print(error);

      print(error.message.toString());
      BotToast.showText(text: "Sign up failed: ${error.message.toString()}");
    }
  }

  // Email Pass Sign Up
  Future<void> handleSignUpwithEmailPass(String email, String password) async {
    try {
      isloading.value = true;
      await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      // Listen for Firebase authentication state changes
      auth.authStateChanges().listen((User? firebaseUser) async {
        if (firebaseUser == null) {
          BotToast.showText(text: "Sign up failed");
        } else {
          // Store user data in Firestore
          // await usersCollection.doc(firebaseUser.uid).set({
          //   'userid': firebaseUser.uid,
          //   'email': email,
          //   'username': '',
          //   'userpic': null
          // });
          isloading.value = false;
          temporaryemail = email;
          temporaryid = firebaseUser.uid;
          // BotToast.showText(text: "Signed In Successfully");
          Get.toNamed('/newuser');
          // Get.offAll(const BottomsNavigation());
        }
      });
    } on SocketException {
      isloading.value = false;
      BotToast.showText(text: "Network Error");
    } on FirebaseAuthException catch (error) {
      isloading.value = false;
      BotToast.showText(text: "Sign up failed: ${error.message.toString()}");
    }
  }

  // Add User into database

  // Function to add a user to the certificates collection
  Future<void> addUser(String firstName, String lastName) async {
    try {
      await userscollection.doc(temporaryid).set({
        'firstName': firstName,
        'lastName': lastName,
        'email': temporaryemail,
      });
      GetStorage().write("userid", temporaryid);
      GetStorage().write("useremail", temporaryemail);
      GetStorage().write("firstname", firstName);
      GetStorage().write("lastname", lastName);
      Get.toNamed('/profilecompleted');
    } catch (e) {
      BotToast.showText(text: 'Error');
    }
  }

  FutureOr<void> logIn(String username, String password,
      {bool isargument = false}) async {
    // await Future.delayed(const Duration(seconds: 2));

    try {
      final String? accessToken =
          await ApiService().doLogIn(username: username, password: password);
      if (accessToken!.isNotEmpty) {
        // GetStorage().write("useremail", "amr@incrediblepods.com");
        // GetStorage().write("firstname", "Danish");
        // GetStorage().write("lastname", "Test");
        GetStorage().write("bearertoken", accessToken);
        if (!isargument) {
          Get.offAllNamed('/home');
          ('/home', arguments: 'fromsearch');
        } else {
          Get.offAllNamed('/home');
        }
      }
    } catch (e) {
      BotToast.showText(text: "Login Failed");
      logger.d(e);
      throw UnimplementedError(e.toString());
    }
  }

  FutureOr<void> signUp(String firstname, String lastname) async {
    // await Future.delayed(const Duration(seconds: 2));

    try {
      await gettoken();
      bool? sign = await ApiService().doSignIn(
          username: temporaryemail,
          password: temporarypassword,
          firstName: firstname,
          lastName: lastname,
          email: temporaryemail,
          token: temporarybearertoken);
      if (sign) {
        Get.toNamed('/auth');
        BotToast.showText(text: "User Signed In You can Login Now");
      } else {
        // BotToast.showText(text: "Error Signing In");
      }
    } catch (e) {
      logger.d(e);
      throw UnimplementedError(e.toString());
    }
  }

  FutureOr<void> gettoken() async {
    // await Future.delayed(const Duration(seconds: 2));

    try {
      temporarybearertoken = await ApiService().getToken();
      if (temporarybearertoken.isNotEmpty) {
        print(temporarybearertoken);
        // logger.d(state.authStatus);
      } else {
        print('error');
      }
    } catch (e) {
      logger.d(e);
      throw UnimplementedError(e.toString());
    }
  }
}
