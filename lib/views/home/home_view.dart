import 'package:flutter/material.dart';

import '../../widgets/widgets.dart';
import 'widgets/home_body_widget.dart';
import 'widgets/home_footer_widget.dart';
import 'widgets/home_header_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          //Header
          HomeHeaderWidget(),
          //Body
          HomeBodyWidget(),
          //Footer
          HomeFooterWidget()
        ],
      ),
    );
  }
}
