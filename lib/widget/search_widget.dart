import 'package:doctorconsultation/theme.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 12),
        decoration: BoxDecoration(
            color: gradient2, borderRadius: BorderRadius.circular(21)),
        child: TextFormField(
          decoration: InputDecoration(
            suffixIcon: Image.asset("assets/icon_search.png"),
            hintText: "Search by specialist",
            contentPadding: EdgeInsets.only(top: 0, left: 20),
            hintStyle: poppins.copyWith(fontSize: 12),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(21),
              borderSide: BorderSide.none,
            ),
          ),
        ));
  }
}
