import 'package:doctorconsultation/theme.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key, this.image}) : super(key: key);

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 52,
      padding: EdgeInsets.only(top: 3.38, left: 2.28),
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(width: 1, color: secondaryColor)),
      child: Container(
        height: 47.62,
        width: 47.62,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(image!)),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
