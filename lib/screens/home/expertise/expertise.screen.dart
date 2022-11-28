// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ubsprofessional/models/album.dart';

// ignore: must_be_immutable
class AlbumPage extends StatelessWidget {
  AlbumPage({super.key});

  List<Album> albums = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getData(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
                itemCount: albums.length,
                itemBuilder: (context, index) {
                  return Container(
                      height: 130,
                      width: 600,
                      color: Colors.greenAccent,
                      padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 50),
                      margin: const EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "user Id:${albums[index].userId}",
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Id:${albums[index].id}",
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                          Text(
                            "Title:${albums[index].title}",
                            maxLines: 1,
                            style: const TextStyle(
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ));
                });
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        });
  }

  Future<List<Album>> getData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        albums.add(Album.fromJson(index));
      }
      return albums;
    } else {
      return albums;
    }
  }
}