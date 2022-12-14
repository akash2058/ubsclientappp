import 'package:flutter/material.dart';

class DocumnentScreen extends StatelessWidget {
  const DocumnentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
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
                  margin: const EdgeInsets.all(15),
                  elevation: 5,
                  child: const Center(child: Text('No documents added yet.')),
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
