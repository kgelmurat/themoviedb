import 'package:flutter/material.dart';

abstract class AppButtonStyle{
  static final ButtonStyle linkbutton = ButtonStyle(
                  foregroundColor: MaterialStateProperty.all( const Color(0xFF01B4E4),),
                  textStyle: MaterialStateProperty.all(
                    TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                  ),
                );

}