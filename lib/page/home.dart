import 'package:doctorconsultation/theme.dart';
import 'package:doctorconsultation/widget/header_widget.dart';
import 'package:doctorconsultation/widget/menu_widget.dart';
import 'package:doctorconsultation/widget/search_widget.dart';
import 'package:doctorconsultation/widget/title_widget.dart';
import 'package:doctorconsultation/widget/top_doctor_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              gradient1,
              gradient2,
            ],
          )),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(),
              TitleWidget(),
              SearchWidget(),
              MenuWidget(),
              TopDoctorWidget()
            ],
          ),
        ),
      ),
    );
  }
}
