import 'package:flutter/material.dart';

class terms extends StatelessWidget {
  const terms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepOrange,
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Terms and Condition',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notification_add,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Header(),
          ),
          SizedBox(
            height: 40,
          ),
          Flexible(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'https://ubs.com.np/',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'terms_and_conditions.html',
                    style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    'For Terms and Conditions,',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Please Go through this link.,',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )),
        ],
      ),
    );
  }
}

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/oop.jpg"),
        opacity: 0.25,
        fit: BoxFit.cover,
      )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Image(
              image: AssetImage("assets/images/logo-blue.png"),
              height: 50,
            ),
          ),
          const SizedBox(
            height: 1,
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 4),
            color: Colors.blue.shade800,
            child: const Text(
              "Upaya Services Ltd.",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
