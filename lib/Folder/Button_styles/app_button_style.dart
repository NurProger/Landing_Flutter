import 'package:flutter/material.dart';

abstract class AppButtonStyle{
  static final ButtonStyle linkButton = const ButtonStyle(
  textStyle: MaterialStatePropertyAll(
  TextStyle(fontSize: 16,fontWeight: FontWeight.w700,)
    ),
    foregroundColor: MaterialStatePropertyAll(const Color(0xff01b4e4))
  );
}