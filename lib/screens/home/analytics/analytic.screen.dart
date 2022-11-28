import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ubsprofessional/models/comment.models.dart';

class CommentPage extends StatelessWidget {
  const CommentPage({super.key});

  Future<List<Comment>> getCommentData() async {
    try {
      List<Comment> comment = [];

      final response = await http.get((Uri.parse('https://jsonplaceholder.typicode.com/comments')));
      var responseData = jsonDecode(response.body);

      if (response.statusCode == 200) {
        for (int i = 0; i < responseData.length; i++) {
          Comment temp = Comment.fromJson(responseData[i]);
          comment.add(temp);
        }
        return comment;
      } else {
        return comment;
      }
    } catch (err) {
      rethrow;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pinkAccent,
      child: FutureBuilder(
          future: getCommentData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text(snapshot.error.toString());
            }

            if (snapshot.hasData) {
              List<Comment> comments = snapshot.data!;

              return ListView.builder(
                  itemCount: comments.length,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 130,
                      color: Colors.lightBlue,
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      margin: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Post id: ${comments[index].postId}',
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'id: ${comments[index].id}',
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'email:${comments[index].email}',
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            'body:${comments[index].body}',
                            maxLines: 2,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),
    );
  }
}
