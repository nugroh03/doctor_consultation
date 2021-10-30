import 'package:doctorconsultation/theme.dart';
import 'package:flutter/material.dart';

class TitleWidget extends StatelessWidget {
  const TitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 34),
        child: Text("Find the professional doctor,\nquickly and promising.",
            style: poppins.copyWith(
                fontSize: 20, fontWeight: medium, color: primaryColor)));
  }
}
