import 'package:flutter/material.dart';

class blogscreen extends StatelessWidget {
  const blogscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Blog',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: [
            Icon(
              Icons.notification_add,
              color: Colors.black,
            ),
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            OutlinedButton(
                child: Text(
                  'All',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Color.fromARGB(255, 40, 9, 7))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
            SizedBox(
              width: 10,
            ),
            OutlinedButton(
                child: Text(
                  'Bussiness',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Color.fromARGB(255, 40, 9, 7))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
            SizedBox(
              width: 10,
            ),
            OutlinedButton(
                child: Text(
                  'Malpot',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Color.fromARGB(255, 40, 9, 7))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
            SizedBox(
              width: 10,
            ),
            OutlinedButton(
                child: Text(
                  'OCR',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Color.fromARGB(255, 40, 9, 7))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
            SizedBox(
              width: 10,
            ),
            OutlinedButton(
                child: Text(
                  'Notice',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Color.fromARGB(255, 40, 9, 7))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
            SizedBox(
              width: 10,
            ),
            OutlinedButton(
                child: Text(
                  'Upaya',
                  style: TextStyle(color: Colors.black),
                ),
                onPressed: () {},
                style: ButtonStyle(
                    side: MaterialStateProperty.all(
                        const BorderSide(color: Color.fromARGB(255, 40, 9, 7))),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    )))),
          ],
        ),
      ),
    );
  }
}
