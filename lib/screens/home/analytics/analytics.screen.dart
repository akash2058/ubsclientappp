import 'dart:math';

import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  const Analytics({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Center(
          heightFactor: 2,
          child: Text(
            'Overall Summary',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(10.0)),
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          width: 400,
          height: 130,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '    NRP 7000',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '    Gross Revenue',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '  (Subjected to applicable taxes)',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 42,
                    minRadius: 42,
                    child: CircleAvatar(
                        backgroundColor: Colors.green,
                        foregroundColor: Colors.black,
                        maxRadius: 39,
                        minRadius: 39,
                        child: Icon(Icons.wallet_giftcard_outlined)),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.green, borderRadius: BorderRadius.circular(10.0)),
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          width: 400,
          height: 130,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '    NPR 8424',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '     Receivable form ongoing kaam',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 50,
                    minRadius: 50,
                    child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        maxRadius: 45,
                        minRadius: 45,
                        child: Icon(
                          Icons.money,
                          size: 50,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(10.0)),
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          width: 400,
          height: 110,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '    5',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '    Kaam Completed',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 50,
                    minRadius: 50,
                    child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        maxRadius: 45,
                        minRadius: 45,
                        child: Icon(
                          Icons.pages_outlined,
                          size: 50,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(10.0)),
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          width: 400,
          height: 80,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '    8',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '    Ongoing Kaam',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 50,
                    minRadius: 50,
                    child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        maxRadius: 45,
                        minRadius: 45,
                        child: Icon(
                          Icons.panorama_photosphere_outlined,
                          size: 50,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(10.0)),
          margin: EdgeInsets.all(8.0),
          padding: EdgeInsets.all(8.0),
          width: 400,
          height: 80,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  '    4',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text(
                  '    Overall Rating',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Container(
                  alignment: Alignment.topRight,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    maxRadius: 50,
                    minRadius: 50,
                    child: CircleAvatar(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.black,
                        maxRadius: 45,
                        minRadius: 45,
                        child: Icon(
                          Icons.auto_awesome,
                          size: 50,
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
