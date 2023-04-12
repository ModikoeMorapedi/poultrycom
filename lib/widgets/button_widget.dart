import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key, this.text, this.minWidth, this.onPressed});
  final String? text;
  final double? minWidth;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: MediaQuery.of(context).size.height * 0.06,
          minWidth: minWidth!,
        ),
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(text!),
        ));
  }
}
