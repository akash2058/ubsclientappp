import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ubsprofessional/screens/login/mods.dart';

class data extends StatelessWidget {
  data({super.key});

  List<Post> post = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: post.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 130,
                    color: Colors.purple,
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                    margin: EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'User id: ${post[index].userId}',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'id: ${post[index].id}',
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'title:${post[index].title}',
                          maxLines: 1,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Body:${post[index].body}',
                          maxLines: 2,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                      ],
                    ),
                  );
                });
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Future<List<Post>> getData() async {
    final response = await http
        .get((Uri.parse('https://jsonplaceholder.typicode.com/posts')));
    var data = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        post.add(Post.fromJson(index));
      }
      return post;
    } else {
      return post;
    }
  }
}
