import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/models/blogmodel.dart';
import 'package:url_launcher/url_launcher.dart';

class BlogScreen extends StatefulWidget {
  BlogScreen({super.key});

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  Future<List<BlogModel>> postData() async {
    try {
      List<BlogModel> bloglist = [];

      final pref = await SharedPreferences.getInstance();
      int user = pref.getInt('user')!;
      final response = await http.post(
          Uri.parse('https://api.ubs.com.np/index.php?method=get_blog_posts'),
          body: {
            "user": user.toString(),
            "start": "0",
            "limit": "10",
          });
      var resposeData = jsonDecode(response.body.toString());
      if (resposeData["response"] == "success") {
        for (Map<String, dynamic> index in resposeData["blog"]) {
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
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
          'Blog',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [],
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
                        return Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(5),
                          child: Card(
                            elevation: 10,
                            margin: EdgeInsets.all(4),
                            shape: RoundedRectangleBorder(),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  InkWell(
                                      onTap: () => launchUrl(Uri.parse(
                                          "https://nepalkhabar.com/economy/49387-2021-02-05-09-49-29")),
                                      child: Image(
                                        image: NetworkImage(
                                            data[index].thumbnail.toString()),
                                      )),
                                  InkWell(
                                    onTap: () => launchUrl(Uri.parse(
                                        "https://nepalkhabar.com/economy/49387-2021-02-05-09-49-29")),
                                    child: Text(
                                      data[index].title.toString(),
                                      style: const TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Align(
                                        alignment: Alignment.bottomLeft,
                                        child: CircleAvatar(
                                          child: Image(
                                              image: NetworkImage(data[index]
                                                  .author_image
                                                  .toString())),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 200,
                                      ),
                                      Text(data[index]
                                          .blog_timestamp
                                          .toString()),
                                    ],
                                  ),
                                ]),
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
