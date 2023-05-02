import 'package:flutter/material.dart';
import 'package:poultrycom/utils/font_styles_util.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, this.title});
  final String? title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 8,
      width: MediaQuery.of(context).size.width,
      alignment: Alignment.center,
      color: Colors.green,
      child: Text(
        title!,
        style: poultryFontSize30White,
      ),
    );
  }
}
