import 'dart:async';
import 'package:flutter/material.dart';
import 'package:logistics/view/Screenintro.dart';

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({Key? key}) : super(key: key);

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    splash();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.blue,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Align(
              alignment: Alignment.center,
              child: Image.asset('asset/img01.png')),
        ),
      ),
    );
  }

  splash() async {
    await Future.delayed(const Duration(seconds: 3));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (ctx) => Indrouction()),
    );
  }
}
