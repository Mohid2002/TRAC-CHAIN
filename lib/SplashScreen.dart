import 'dart:async';

import 'package:flutter/material.dart';
import 'package:news/loginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(Duration(seconds: 3),() {
      Navigator.push(context,MaterialPageRoute(builder: (context)=>LoginScreen()));
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(height: 150),
            Center(child: Image.asset('images/trackchain.png')),
            SizedBox(height: 20),
            Text('Trac Chain',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 55,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
