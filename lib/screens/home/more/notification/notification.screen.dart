import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/models/expertise.dart';
import 'package:ubsclient/models/notifcation.model.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});
  Future<List<NotificationModel>> postData() async {
    try {
      List<NotificationModel> notificationlist = [];
      final pref = await SharedPreferences.getInstance();
      int user = pref.getInt('user')!;
      final response = await http.post(
          Uri.parse(
              'https://api.ubs.com.np/index.php?method=get_notification_data_up'),
          body: {
            "user": user.toString(),
            "start": "0",
            "limit": "10",
          });
      var responseData = jsonDecode(response.body.toString());
      if (responseData["response"] == "success") {
        for (Map<String, dynamic> index in responseData["notifications"]) {
          notificationlist.add(NotificationModel.fromMap(index));
        }
        return notificationlist;
      } else {
        return notificationlist;
      }
    } catch (error) {
      throw Exception(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: const Text(
              'Notification',
            )),
        body: Column(
          children: [
            Expanded(
                child: FutureBuilder(
                    future: postData(),
                    builder: ((context, snapshot) {
                      if (snapshot.hasData) {
                        var data = snapshot.data!;
                        return ListView.builder(
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Card(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(data[index]
                                              .notifcationmsg
                                              .toString()),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(data[index]
                                              .notification_type
                                              .toString()),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(data[index]
                                              .notification_status
                                              .toString()),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(data[index]
                                              .transactionID
                                              .toString()),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(data[index]
                                              .accept_status
                                              .toString()),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(data[index]
                                              .accept_status
                                              .toString()),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(data[index]
                                              .notiffcation_date
                                              .toString()),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      }
                      return Text("loading");
                    })))
          ],
        ));
  }
}
