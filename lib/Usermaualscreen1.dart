import 'package:flutter/material.dart';
import 'package:news/UserProfile.dart';

import 'loginScreen.dart';

class UserScreen1 extends StatefulWidget {
  const UserScreen1({super.key});

  @override
  State<UserScreen1> createState() => _UserScreen1State();
}

class _UserScreen1State extends State<UserScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            title: Center(child: Text('Home Page',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )),
            iconTheme: IconThemeData(
              color: Colors.pink,
              size: 32,
            ),
          ),
          drawer: Drawer(
            backgroundColor: Colors.black,
            child: ListView(
              children: [
                ListTile(
                  title:Text('User Menu',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 40
                    ),
                  ),
                  onTap:(){},
                ),

                SizedBox(height: 40),
                ListTile(
                  leading: Icon(
                    Icons.person,
                    color: Colors.pink,
                    size: 40,
                  ),
                  title: Text(
                    'PROFILE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => UserProfile()),
                    );
                  },
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(
                    Icons.pending_actions,
                    color: Colors.pink,
                    size: 40,
                  ),
                  title: Text(
                    'PAST ORDERS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(
                    Icons.maps_home_work_outlined,
                    color: Colors.pink,
                    size: 40,
                  ),
                  title: Text(
                    'TRACK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(
                    Icons.settings,
                    color: Colors.pink,
                    size: 40,
                  ),
                  title: Text(
                    'SETTINGS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  onTap: () {},
                ),
                SizedBox(height: 10),
                ListTile(
                  leading: Icon(
                    Icons.output_outlined,
                    color: Colors.pink,
                    size: 40,
                  ),
                  title: Text(
                    'SIGN OUT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  onTap: () {
                    // Navigate to the login screen
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
    );
  }
}
