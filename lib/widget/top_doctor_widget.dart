import 'package:doctorconsultation/theme.dart';
import 'package:doctorconsultation/widget/item_top_doctor_widget.dart';
import 'package:flutter/material.dart';

class TopDoctorWidget extends StatelessWidget {
  const TopDoctorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List listDoctors = [
      {
        "image": "assets/image 4.png",
        "name": "Alessya Camella",
        "specialist": "Eye Specialist"
      },
      {
        "image": "assets/image 5.png",
        "name": "Jamal Luddin",
        "specialist": "Smile Specialist"
      },
    ];
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Our top doctors",
            style: poppins.copyWith(
              fontSize: 14,
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
                children: listDoctors.map((item) {
              return ItemTopDoctorWidget(
                image: item["image"],
                name: item["name"],
                specialist: item["specialist"],
              );
            }).toList()),
          ),
        ],
      ),
    );
    ;
  }
}
