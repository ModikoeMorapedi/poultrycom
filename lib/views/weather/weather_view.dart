import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';

class WeatherView extends StatelessWidget {
  const WeatherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //App bar
        AppBarWidget(
          title: "Weather",
        ),

        //Body
        Container(
          height: MediaQuery.of(context).size.height - 420,
          color: Colors.yellow,
        ),
        //footer

        Container(
          height: MediaQuery.of(context).size.height - 550,
          color: Colors.blue,
        )
      ],
    );
  }
}
