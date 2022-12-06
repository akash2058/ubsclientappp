import 'package:flutter/material.dart';

import 'package:ubsclient/screens/login/login.header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text('Profile'),
          automaticallyImplyLeading: true,
          actions: [
            IconButton(
                onPressed: (() {}),
                icon: Icon(
                  Icons.notification_add,
                ))
          ]),
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(
                  'assets/images/ee.jpg',
                ),
                radius: 90,
              ),
              Divider(
                color: Colors.black,
                height: 15,
                thickness: 1,
                indent: 10,
                endIndent: 10,
              ),
              Text(
                'Full Name',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Name'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'DATE OF BIRTH',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Enter Your Date of birth'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'GENDER',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'PERMANENT ADDRESS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Enter Your Permanent Address'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'TEMPORARY ADDRESS',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Enter Your Temporary Address'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'PHONE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Enter your Phone Number'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'EMAIL',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Enter Your Email'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'AFFIALTED INSTITUTE',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'Enter Your affialted institution'),
              ),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )),
                child: Text(
                  'Save My Profile',
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
