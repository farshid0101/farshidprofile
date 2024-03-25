import 'package:flutter/material.dart';


class GenderColumn extends StatelessWidget {
  const GenderColumn({
    super.key, required this.icon, required this.text
  });
  final Text text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [icon, text],
    );
  }
}