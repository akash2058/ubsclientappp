import 'package:flutter/material.dart';

class DocumnentScreen extends StatelessWidget {
  const DocumnentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            'Documents',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Container(
          margin: EdgeInsets.all(15),
          child: Column(
            children: [
              const Text(
                'Documents(Citizenship and other relevant documents)',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.green[300]),
                    onPressed: () {},
                    child: Text('Upload Documents')),
              ),
              Container(
                height: 90,
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image(
                            height: 25,
                            image: AssetImage('assets/images/folder.png')),
                        Text('No documents added yet.'),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Colors.blue[800]),
                    onPressed: () {},
                    child: const Text('Update Documents')),
              ),
            ],
          ),
        ));
  }
}
