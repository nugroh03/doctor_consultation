import 'package:doctorconsultation/theme.dart';
import 'package:doctorconsultation/widget/image_widget.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      child: Row(
        children: [
          ImageWidget(image: "assets/image 3.png"),
          SizedBox(
            width: 12,
          ),
          Text(
            "Howdy, Tamara!",
            style: poppins.copyWith(fontSize: 16, color: primaryColor),
          )
        ],
      ),
    );
  }
}
