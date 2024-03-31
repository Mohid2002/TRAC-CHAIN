import 'package:flutter/material.dart';

class AdminScreen1 extends StatefulWidget {
  const AdminScreen1({super.key});

  @override
  State<AdminScreen1> createState() => _AdminScreen1State();
}

class _AdminScreen1State extends State<AdminScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Text('ADMIN IN UNDER CONSTRUCTION',
          style:TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
          ),
        ),
      ),
    );
  }
}
