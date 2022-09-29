import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomText extends StatelessWidget {
  final String title;
  const CustomText({ required this.title, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
      ),
    );
  }
}
