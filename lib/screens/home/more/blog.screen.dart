import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/models/blog.model.dart';

class blogscreen extends StatelessWidget {
  blogscreen({super.key});

  List<BlogModel> bloglist = [];
  Future<List<BlogModel>> getdata() async {
    final response = await http.get(Uri.parse(
        'https://api.ubs.com.np/index.php?method=get_reviews_up_app'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        bloglist.add(BlogModel.fromJson(index));
      }
      return bloglist;
    } else {
      return bloglist;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
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
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder(
                future: getdata(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Text('loading');
                  } else {
                    return ListView.builder(
                      itemCount: bloglist.length,
                      itemBuilder: (context, index) {
                        return Text(index.toString());
                      },
                    );
                  }
                }),
          )
        ],
      ),
    );
  }
}
