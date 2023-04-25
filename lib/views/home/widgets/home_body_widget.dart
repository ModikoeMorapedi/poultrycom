import 'package:flutter/material.dart';
import 'package:poultrycom/utils/font_styles_util.dart';

class HomeBodyWidget extends StatelessWidget {
  const HomeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 50),
      height: MediaQuery.of(context).size.height / 2.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Promotions",
            style: poultryFontSize20Black,
          ),
          Image.network(
            "https://www.foodformzansi.co.za/wp-content/uploads/2020/09/chickens.jpg",
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height / 3,
          )
        ],
      ),
    );
  }
}
