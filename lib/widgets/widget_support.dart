import 'dart:ui';

import 'package:flutter/material.dart';

class Appwidgets{

  static TextStyle boldtextsyle(){
    return const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 24);
  }

  static TextStyle headstyle(){
    return const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 28);
  }

    static TextStyle lighttextstyle(){
    return const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500, fontSize: 16, color: Colors.black38);
  }

  static TextStyle semiboldtextstyel(){
    return const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 18);
  }

  static TextStyle text1(){
    return const TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white);
  }
}