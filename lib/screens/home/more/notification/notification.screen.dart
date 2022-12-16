import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
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
            backgroundColor: Colors.white,
            iconTheme: IconThemeData(color: Colors.black),
            centerTitle: true,
            title: const Text('Notifications',
                style: TextStyle(color: Colors.black))),
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
                                margin: const EdgeInsets.all(8),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    Card(
                                      shadowColor: Colors.black,
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            data[index].tid.toString(),
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            data[index]
                                                .notification_msg
                                                .toString(),
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Text(
                                            data[index]
                                                .notification_type
                                                .toString(),
                                            style: const TextStyle(
                                                fontSize: 16,
                                                color: Colors.blue,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const SizedBox(
                                            height: 10,
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                data[index]
                                                    .notification_date
                                                    .toString(),
                                                style: const TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 110,
                                              ),
                                              const Icon(
                                                Icons.check,
                                                color: Colors.green,
                                              ),
                                              Text(
                                                data[index]
                                                    .accept_status
                                                    .toString(),
                                                style: const TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                    fontSize: 15,
                                                    color: Colors.green),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              );
                            });
                      }
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Center(
                              child: Image(
                                  height: 150,
                                  image: AssetImage(
                                      'assets/images/dark-data.png'))),
                          Text(
                            'No Notifications',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )
                        ],
                      );
                    })))
          ],
        ));
  }
}
