import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/models/Review.model.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});
  Future<List<ReviewModel>> postData() async {
    try {
      List<ReviewModel> reviewlist = [];

      final pref = await SharedPreferences.getInstance();
      int user = pref.getInt('user')!;
      final response = await http.post(
          Uri.parse('https://api.ubs.com.np/index.php?method=get_reviews'),
          body: {
            "user": user.toString(),
            "usertype": "Service Seeker",
          });
      var resposeData = jsonDecode(response.body.toString());
      if (resposeData["response"] == "success") {
        for (Map<String, dynamic> index in resposeData["reviews"]) {
          reviewlist.add(ReviewModel.fromMap(index));
        }
        return reviewlist;
      } else {
        return reviewlist;
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
          'Reviews',
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
                children: const [
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
                        return Container(
                          margin: const EdgeInsets.all(8),
                          padding: const EdgeInsets.all(5),
                          child: Container(
                            decoration: const BoxDecoration(boxShadow: []),
                            child: Card(
                              elevation: 10,
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        NetworkImage(data[index].client_image),
                                  ),
                                  Text(data[index].client_name),
                                  Text(data[index].expert_name),
                                  RatingBar.builder(
                                    ignoreGestures: false,
                                    initialRating:
                                        double.parse(data[index].rating),
                                    updateOnDrag: true,
                                    itemBuilder: (context, index) => const Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    minRating: 1,
                                    onRatingUpdate: (rating) => (value) => 3,
                                  ),
                                  Text(data[index].remarks),
                                  Text(data[index].review),
                                  Text(
                                    data[index].review_status,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  ),
                                  Text(
                                    data[index].review_time,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(color: Colors.red),
                  );
                }),
          )
        ],
      ),
    );
  }
}
