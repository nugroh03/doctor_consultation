import 'package:doctorconsultation/theme.dart';
import 'package:flutter/material.dart';

class ItemMenuWidget extends StatelessWidget {
  const ItemMenuWidget({Key? key, this.title, this.icon}) : super(key: key);

  final String? title;
  final String? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 111,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        color: gradient2,
        borderRadius: BorderRadius.circular(21),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 38,
            width: 38,
            child: Image.asset(icon!),
          ),
          SizedBox(height: 12),
          Text(title!, style: poppins.copyWith(fontSize: 14))
        ],
      ),
    );
  }
}
