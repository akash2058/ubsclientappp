import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:ubsclient/models/Analytics.model.dart';
import 'package:http/http.dart' as http;

class secondpage extends StatelessWidget {
  secondpage({super.key});
  List<Analytics> analyticsList = [];

  Future<List<Analytics>> getPostApi() async {
    final response = await http.get(Uri.parse(
        'https://api.ubs.com.np/index.php?method=get_provider_kaam_analytic'));
    var data = jsonDecode(response.body.toString());
    if (response.statusCode == 200) {
      for (Map<String, dynamic> index in data) {
        analyticsList.add(Analytics.fromJson(index));
      }
      return analyticsList;
    } else {
      return analyticsList;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(10.0),
              child: Card(
                  borderOnForeground: true,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Row(
                          children: const [
                            Text('Id'),
                            SizedBox(
                              width: 50,
                            ),
                            Text('date'),
                          ],
                        ),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Service Name',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepOrangeAccent,
                                ),
                              ),
                              const Text(
                                'Compliance',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Three Months return Company',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Text(
                                'Client',
                                style: TextStyle(
                                  color: Colors.deepOrangeAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Mandip Adhikari',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                'Chiyapatii Dot Corn Pvt Ltd',
                                style: TextStyle(color: Colors.grey),
                              ),
                              const Text(
                                'Deadline',
                                style: TextStyle(
                                  color: Colors.deepOrangeAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const Text(
                                '30th Dec 2020',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: const [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.deepOrangeAccent,
                                  ),
                                  Text('Kaam Created')
                                ],
                              ),
                              const Text(
                                'NPR 0',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: const EdgeInsets.all(10.0),
                                color: Colors.green,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'Edit',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.yellowAccent),
                                        )),
                                  ],
                                ),
                              ),
                              Container(
                                  margin: EdgeInsets.all(4.0),
                                  child: Card(
                                      borderOnForeground: true,
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Row(
                                              children: const [
                                                Text('Id'),
                                                SizedBox(
                                                  width: 50,
                                                ),
                                                Text('date'),
                                              ],
                                            ),
                                            Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  const Text(
                                                    'Service Name',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Compliance',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Three Months return Company',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  const Text(
                                                    'Client',
                                                    style: TextStyle(
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Mandip Adhikari',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const Text(
                                                    'Chiyapatii Dot Corn Pvt Ltd',
                                                    style: TextStyle(
                                                        color: Colors.grey),
                                                  ),
                                                  const Text(
                                                    'Deadline',
                                                    style: TextStyle(
                                                      color: Colors
                                                          .deepOrangeAccent,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  const Text(
                                                    '30th Dec 2020',
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  Row(
                                                    children: const [
                                                      Icon(
                                                        Icons.circle,
                                                        color: Colors
                                                            .deepOrangeAccent,
                                                      ),
                                                      Text('Kaam Created')
                                                    ],
                                                  ),
                                                  const Text(
                                                    'NPR 0',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.all(8.0),
                                                    color: Colors.green,
                                                    padding: EdgeInsets.all(4),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        TextButton(
                                                            onPressed: () {},
                                                            child: const Text(
                                                              'Edit',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                            )),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                      margin:
                                                          EdgeInsets.all(8.0),
                                                      child: Card(
                                                          borderOnForeground:
                                                              true,
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .stretch,
                                                              children: [
                                                                Row(
                                                                  children: const [
                                                                    Text('Id'),
                                                                    SizedBox(
                                                                      width: 50,
                                                                    ),
                                                                    Text(
                                                                        'date'),
                                                                  ],
                                                                ),
                                                                Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      const Text(
                                                                        'Service Name',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          color:
                                                                              Colors.deepOrangeAccent,
                                                                        ),
                                                                      ),
                                                                      const Text(
                                                                        'Compliance',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      const Text(
                                                                        'Three Months return Company',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey),
                                                                      ),
                                                                      const Text(
                                                                        'Client',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.deepOrangeAccent,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      const Text(
                                                                        'Mandip Adhikari',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      const Text(
                                                                        'Chiyapatii Dot Corn Pvt Ltd',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey),
                                                                      ),
                                                                      const Text(
                                                                        'Deadline',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.deepOrangeAccent,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      const Text(
                                                                        '30th Dec 2020',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        children: const [
                                                                          Icon(
                                                                            Icons.circle,
                                                                            color:
                                                                                Colors.deepOrangeAccent,
                                                                          ),
                                                                          Text(
                                                                              'Kaam Created')
                                                                        ],
                                                                      ),
                                                                      const Text(
                                                                        'NPR 0',
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                      Container(
                                                                        margin:
                                                                            EdgeInsets.all(8.0),
                                                                        color: Colors
                                                                            .green,
                                                                        padding:
                                                                            EdgeInsets.all(4),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text('Edit')),
                                                                          ],
                                                                        ),
                                                                      ),
                                                                    ])
                                                              ])))
                                                ])
                                          ])))
                            ])
                      ]))),
        ],
      ),
    ));
  }
}
