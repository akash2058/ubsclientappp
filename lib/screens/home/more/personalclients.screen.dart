import 'package:flutter/material.dart';

class myclients extends StatelessWidget {
  const myclients({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.deepOrange,
        child: Icon(Icons.add),
      ),
      appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'My Personal Clients',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.black,
                ))
          ]),
      body: Container(
          child: Column(
        children: [
          Center(
            child: Image(image: AssetImage('assets/images/hh.png')),
          ),
          Center(
            child: Text(
              'You Have not added your client yet',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          )
        ],
      )),
    );
  }
}
