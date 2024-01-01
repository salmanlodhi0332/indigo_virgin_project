// import 'package:esim2/utils/size_utils.dart';
// import 'package:esim2/widgets/custom_image_view.dart';
// import 'package:flutter/material.dart';
// import 'package:etraveler/widgets/custom_icon_button.dart';

// // ignore: must_be_immutable
// class AppbarTrailingIconbutton extends StatelessWidget {
//   AppbarTrailingIconbutton({
//     Key? key,
//     this.imagePath,
//     this.margin,
//     this.onTap,
//   }) : super(
//           key: key,
//         );

//   String? imagePath;

//   EdgeInsetsGeometry? margin;

//   Function? onTap;

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         onTap!.call();
//       },
//       child: Padding(
//         padding: margin ?? EdgeInsets.zero,
//         child: CustomIconButton(
//           height: 35.adaptSize,
//           width: 35.adaptSize,
//           decoration: IconButtonStyleHelper.fillOnPrimaryTL7,
//           child: CustomImageView(
//             imagePath: ImageConstant.imgBoldDuotoneSchool,
//           ),
//         ),
//       ),
//     );
//   }
// }
