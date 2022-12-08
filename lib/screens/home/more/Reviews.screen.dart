import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/models/Review.model.dart';

class ReviewScreen extends StatelessWidget {
  ReviewScreen({super.key});
  Future<List<ReviewModel>> postData() async {
    try {
      List<ReviewModel> reviewlist = [];

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
          backgroundColor: Colors.lightBlueAccent,
          centerTitle: true,
          title: const Text(
            'Reviews',
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
                          margin: EdgeInsets.all(8),
                          padding: EdgeInsets.all(5),
                          child: Container(
                            decoration: BoxDecoration(boxShadow: [
                              BoxShadow(
                                blurRadius: 20,
                              )
                            ]),
                            child: Card(
                              color: Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(data[index].transactionID),
                                  Text(data[index].clientID),
                                  Text(data[index].companyName),
                                  RatingBar.builder(
                                    ignoreGestures: false,
                                    initialRating:
                                        double.parse(data[index].rating),
                                    updateOnDrag: true,
                                    itemBuilder: (context, index) => Icon(
                                      Icons.star,
                                      color: Colors.red,
                                    ),
                                    minRating: 1,
                                    onRatingUpdate: (rating) => (value) => 3,
                                  ),
                                  Text(data[index].fullname),
                                  Text(data[index].review),
                                  Text(data[index].reviewedOn),
                                ],
                              ),
                            ),
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
