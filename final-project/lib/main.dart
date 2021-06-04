import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'doctorInfo.dart';
import 'AboutUs.dart';
import 'medicament.dart';
import 'billan.dart';
import 'index.dart';
import 'resultat.dart';

void main() {
  runApp(MeDoz());
}

class MeDoz extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      theme: ThemeData(scaffoldBackgroundColor: Color(0xFFFDF2D6)),
      home: DoctorInfos(),
    );
  }
}
