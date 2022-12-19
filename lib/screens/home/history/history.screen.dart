import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/models/historymodel.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});
  Future<List<HistoryModel>> postData() async {
    try {
      List<HistoryModel> historylist = [];

      final pref = await SharedPreferences.getInstance();
      int user = pref.getInt('user')!;
      final response = await http.post(
          Uri.parse('https://api.ubs.com.np/index.php?method=get_kaam_history'),
          body: {
            "user": user.toString(),
            "type": "Service Seeker",
          });
      var resposeData = jsonDecode(response.body.toString());
      if (resposeData["response"] == "success") {
        for (Map<String, dynamic> index in resposeData["kaam"]) {
          historylist.add(HistoryModel.fromMap(index));
        }
        return historylist;
      } else {
        return historylist;
      }
    } catch (err) {
      throw Exception(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(0),
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
                                    child: Card(
                                        borderOnForeground: true,
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Row(
                                                children: [
                                                  Text(data[index].t_id),
                                                  SizedBox(
                                                    width: 50,
                                                  ),
                                                  Text(data[index]
                                                      .date_assigned),
                                                ],
                                              ),
                                              Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(data[index].kaam),
                                                    Text(
                                                      data[index].sub_kaam,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      'Proffessional',
                                                      style: TextStyle(
                                                        color: Colors
                                                            .deepOrangeAccent,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      data[index].expert,
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Text(
                                                      '30th Dec 2020',
                                                      style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                    ),
                                                    Row(
                                                      children: [
                                                        Icon(
                                                          Icons.circle,
                                                          color: Colors
                                                              .deepOrangeAccent,
                                                        ),
                                                        Text(data[index]
                                                            .kaam_status)
                                                      ],
                                                    ),
                                                    Text(
                                                      data[index].fee,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold),
                                                    ),
                                                  ]),
                                            ])))));
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
