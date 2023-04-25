import 'package:flutter/material.dart';

class FrameWidget extends StatelessWidget {
  const FrameWidget({super.key, this.src, this.fit});
  final String? src;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 2.4,
      height: MediaQuery.of(context).size.height / 8,
      decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.green),
          borderRadius: BorderRadius.circular(8)),
      child: Image.network(
        src!,
        fit: fit!,
      ),
    );
  }
}
