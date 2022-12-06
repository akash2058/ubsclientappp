import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/models/blog.model.dart';

class BlogScreen extends StatelessWidget {
  BlogScreen({super.key});
  Future<List<BlogModel>> postData() async {
    try {
      List<BlogModel> bloglist = [];

      final pref = await SharedPreferences.getInstance();
      int user = pref.getInt('user')!;
      final response = await http.post(
          Uri.parse(
              'https://api.ubs.com.np/index.php?method=get_reviews_up_app'),
          body: {
            "user": user.toString(),
            "start": "0",
            "limit": "10",
          });
      var resposeData = jsonDecode(response.body.toString());
      if (resposeData["response"] == "success") {
        for (Map<String, dynamic> index in resposeData["reviews"]) {
          bloglist.add(BlogModel.fromMap(index));
        }
        return bloglist;
      } else {
        return bloglist;
      }
    } catch (err) {
      throw Exception(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
          title: const Text(
            'Blog',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
          actions: const [
            Icon(
              Icons.notification_add,
              color: Colors.black,
            ),
          ]),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Text(
                    'Gategory :',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.black)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {},
                      child: Text("all")),
                  SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.black)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {},
                      child: Text("all")),
                  SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.black)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {},
                      child: Text("all")),
                  SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.black)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {},
                      child: Text("all")),
                  SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.black)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {},
                      child: Text("all")),
                  SizedBox(
                    width: 15,
                  ),
                  OutlinedButton(
                      style: ButtonStyle(
                          side: MaterialStateProperty.all(
                              const BorderSide(color: Colors.black)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                      onPressed: () {},
                      child: Text("all")),
                  SizedBox(
                    width: 15,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: FutureBuilder(
                future: postData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var data = snapshot.data!;
                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Text(data[index].transactionID),
                              Text(data[index].clientID),
                              Text(data[index].companyName),
                              Text(data[index].fullname),
                              Text(data[index].rating),
                              Text(data[index].review),
                              Text(data[index].reviewedOn),
                            ],
                          ),
                        );
                      },
                    );
                  }
                  return const Text('loading');
                }),
          )
        ],
      ),
    );
  }
}
