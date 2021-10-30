import 'package:doctorconsultation/theme.dart';
import 'package:doctorconsultation/widget/image_widget.dart';
import 'package:flutter/material.dart';

class ItemTopDoctorWidget extends StatelessWidget {
  const ItemTopDoctorWidget({Key? key, this.image, this.name, this.specialist})
      : super(key: key);

  final String? image;
  final String? name;
  final String? specialist;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 18),
      child: Row(children: [
        ImageWidget(
          image: image,
        ),
        SizedBox(
          width: 12,
        ),
        Container(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(name!, style: poppins.copyWith(fontSize: 16)),
            Text(specialist!,
                style: poppins.copyWith(
                  fontSize: 12,
                  fontWeight: light,
                  color: thirdColor,
                ))
          ]),
        )
      ]),
    );
  }
}
