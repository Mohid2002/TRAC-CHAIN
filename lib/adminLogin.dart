import 'package:flutter/material.dart';

import 'Signup.dart';
import 'loginScreen.dart';
import 'AdminmanualScreen1.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  bool _isUserSelected = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'images/trackchain.png',
                width: 300,
                height: 200,
                fit: BoxFit.fitHeight,
              ),
            ),
            SizedBox(height: 30),
            Center(
              child: ToggleButton(
                isSelected: _isUserSelected,
                onSelect: (isSelected) {
                  setState(() {
                    _isUserSelected = isSelected;
                  });
                },
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Admin Sign In',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.pink,
                    size: 50,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Username',
                          hintStyle: TextStyle(color: Colors.pink),
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.only(left: 50),
                        ),
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 27,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Icon(
                    Icons.key_sharp,
                    color: Colors.pink,
                    size: 50,
                  ),
                  SizedBox(width: 15),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.pink),
                          filled: true,
                          fillColor: Colors.grey.shade300,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.only(left: 50),
                        ),
                        style: TextStyle(
                          color: Colors.pink,
                          fontSize: 27,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AdminScreen1()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Sign In',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Rubik Regular',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Signup()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 40, vertical: 20),
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.pink,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Rubik Regular',
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ToggleButton extends StatelessWidget {
  final bool isSelected;
  final Function(bool) onSelect;

  const ToggleButton({
    Key? key,
    required this.isSelected,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children:[
        TextButton(
          onPressed: () {
            onSelect(true);
          },
          style: ButtonStyle(
            backgroundColor: !isSelected
                ? MaterialStateProperty.all<Color>(Colors.pink)
                : MaterialStateProperty.all<Color>(Colors.grey),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()),
              );
            },
            child: Text(
              'User Login',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        SizedBox(width: 10),
        TextButton(
          onPressed: () {
            onSelect(false);
          },
          style: ButtonStyle(
            backgroundColor: isSelected
                ? MaterialStateProperty.all<Color>(Colors.pink)
                : MaterialStateProperty.all<Color>(Colors.grey),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => AdminLogin()),
              );
            },
            child: Text(
              'Admin Login',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}
