import 'package:flutter/material.dart';


class QrImageView extends StatelessWidget {
  const QrImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return QrImageView();
  }
}


//  Widget _buildQRCodeWidget() {
//     return QrImage(
//       data: data,
//       version: QrVersions.auto,
//       size: 200.0,
//       errorStateBuilder: (cxt, err) {
//         return Container(
//           child: Center(
//             child: Text(
//               "Something went wrong...",
//               textAlign: TextAlign.center,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }