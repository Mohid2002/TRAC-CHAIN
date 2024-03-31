import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.pink,size: 30),
          onPressed: () {
            // Define what happens when the back button is pressed
            Navigator.pop(context); // This will pop the current route off the stack
          },
        ),
        title: Center(
          child: Text(
            'User Profile',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(height: 40),
            Center(
              child: Container(
                height: 130,
                width: 130,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    'images/trackchain.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            _Data(title: 'Username',name: 'Soban',icondata: Icons.person_outline,),
            SizedBox(height: 15),
            _Data(title: 'Phone',name: '6969696969',icondata: Icons.phone,),
            SizedBox(height: 15),
            _Data(title: 'Email',name: 'annie ka ashiq@69.com',icondata: Icons.email_rounded,),
            SizedBox(height: 15),
            _Data(title: 'Address',name: 'Soban Dil galli no 69',icondata: Icons.home,),
          ],
        ),
      ),
    );
  }
}

class _Data extends StatelessWidget {
  final String title, name;
  final IconData icondata;

  const _Data({Key? key, required this.title, required this.name, required this.icondata}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          ListTile(
            title: Text(title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(name,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
            leading: Icon(icondata,
              color: Colors.pink,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
