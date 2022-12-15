import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ConditionScreen extends StatelessWidget {
  const ConditionScreen({super.key});

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
        backgroundColor: Colors.blue,
        title: const Text(
          'Terms and Condition',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
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
                  Container(
                    height: 100,
                    child: Card(
                      margin: EdgeInsets.all(20),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)),
                      child: InkWell(
                        onTap: () {
                          launchUrl(Uri.parse(
                              'https://upaya.com.np/terms_and_conditions.html'));
                        },
                        child: Text(
                          textAlign: TextAlign.center,
                          'https://upaya.com.np/terms_and_conditions.html',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'For terms and conditions,',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Please Go through this link.,',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
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
              height: 40,
            ),
          ),
          const SizedBox(
            height: 1,
            width: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
            color: Colors.blue.shade800,
            child: const Text(
              "Upaya business Solutions",
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
