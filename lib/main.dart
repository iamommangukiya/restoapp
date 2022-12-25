import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'pages/Homepage.dart';
import 'pages/Login_page.dart';
import 'pages/creat_page.dart';
import 'pages/lo_cre_acc.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatefulWidget {
  const Myapp({super.key});

  @override
  State<Myapp> createState() => _MyappState();
}

class _MyappState extends State<Myapp> {
  @override
  // void initState() {
  //   SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
  //   // TODO: implement initState
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Cr_lo_page(),
    );
  }
}
