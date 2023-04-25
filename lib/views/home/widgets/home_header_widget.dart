import 'package:flutter/material.dart';
import 'package:poultrycom/utils/font_styles_util.dart';

class HomeHeaderWidget extends StatelessWidget {
  const HomeHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      color: Colors.green,
      child: Text(
        "Welcome Nthabi",
        style: poultryFontSize30White,
      ),
    );
  }
}
