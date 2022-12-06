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
          Expanded(
            child: FutureBuilder(
                future: postData(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var data = snapshot.data!;
                    return ListView.builder(
                      itemCount: data.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.all(8),
                          child: Card(
                            child: Text(data[index].toString()),
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
