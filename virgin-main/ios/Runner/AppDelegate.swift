import UIKit
import Flutter
import GoogleMaps
import goSellSDK

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    // TODO: Add your Google Maps API key
    GMSServices.provideAPIKey("AIzaSyAiV4X3f6GNVuTdknhucJicJBHfzSP3EN0")
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}