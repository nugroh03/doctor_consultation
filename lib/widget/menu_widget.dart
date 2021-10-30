import 'package:doctorconsultation/theme.dart';
import 'package:doctorconsultation/widget/item_menu_widget.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  const MenuWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List itemMenu = [
      {"icon": "assets/special.png", "title": "Tua Renta"},
      {"icon": "assets/nutritions.png", "title": "Nutrisi"},
      {"icon": "assets/heart.png", "title": "Hati"},
      {"icon": "assets/first_medical.png", "title": "Medicine"},
      {"icon": "assets/mata.png", "title": "Mata"},
      {"icon": "assets/berat.png", "title": "Body Fat"},
    ];

    return Container(
      margin: EdgeInsets.only(top: 30),
      height: 278,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            "Browse by category",
            style: poppins.copyWith(
              fontSize: 14,
            ),
          ),
          SizedBox(height: 12),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 22,
                    crossAxisSpacing: 21,
                  ),
                  itemCount: itemMenu.length,
                  itemBuilder: (context, index) {
                    var item = itemMenu[index];
                    return ItemMenuWidget(
                        title: item["title"], icon: item["icon"]);
                  }),
            ),
          )
        ],
      ),
    );
  }
}
