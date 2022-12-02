import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ubsclient/models/photo.dart';

class Historypage extends StatelessWidget {
  const Historypage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notification_add,
                  color: Colors.black,
                ))
          ],
          title: Text(
            'History',
            style: TextStyle(fontSize: 18, color: Colors.black),
          ),
          backgroundColor: Colors.white,
        ),
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
                              children: [
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
                                  Text(
                                    'Service Name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                  ),
                                  Text(
                                    'Compliance',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Three Months return Company',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'Client',
                                    style: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Mandip Adhikari',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    'Chiyapatii Dot Corn Pvt Ltd',
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    'Deadline',
                                    style: TextStyle(
                                      color: Colors.deepOrangeAccent,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    '30th Dec 2020',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.circle,
                                        color: Colors.deepOrangeAccent,
                                      ),
                                      Text('Kaam Created')
                                    ],
                                  ),
                                  Text(
                                    'NPR 0',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Container(
                                    margin: EdgeInsets.all(10.0),
                                    color: Colors.green,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        TextButton(
                                            onPressed: () {},
                                            child: Text(
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
                                                  children: [
                                                    Text('Id'),
                                                    SizedBox(
                                                      width: 50,
                                                    ),
                                                    Text('date'),
                                                  ],
                                                ),
                                                Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        'Service Name',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .deepOrangeAccent,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Compliance',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Three Months return Company',
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                      Text(
                                                        'Client',
                                                        style: TextStyle(
                                                          color: Colors
                                                              .deepOrangeAccent,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Mandip Adhikari',
                                                        style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Text(
                                                        'Chiyapatii Dot Corn Pvt Ltd',
                                                        style: TextStyle(
                                                            color: Colors.grey),
                                                      ),
                                                      Text(
                                                        'Deadline',
                                                        style: TextStyle(
                                                          color: Colors
                                                              .deepOrangeAccent,
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
                                                          Text('Kaam Created')
                                                        ],
                                                      ),
                                                      Text(
                                                        'NPR 0',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      Container(
                                                        margin:
                                                            EdgeInsets.all(8.0),
                                                        color: Colors.green,
                                                        padding:
                                                            EdgeInsets.all(4),
                                                        child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            TextButton(
                                                                onPressed:
                                                                    () {},
                                                                child: Text(
                                                                  'Edit',
                                                                  style:
                                                                      TextStyle(
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
                                                              EdgeInsets.all(
                                                                  8.0),
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
                                                                      children: [
                                                                        Text(
                                                                            'Id'),
                                                                        SizedBox(
                                                                          width:
                                                                              50,
                                                                        ),
                                                                        Text(
                                                                            'date'),
                                                                      ],
                                                                    ),
                                                                    Column(
                                                                        crossAxisAlignment:
                                                                            CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text(
                                                                            'Service Name',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                              color: Colors.deepOrangeAccent,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Compliance',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Three Months return Company',
                                                                            style:
                                                                                TextStyle(color: Colors.grey),
                                                                          ),
                                                                          Text(
                                                                            'Client',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.deepOrangeAccent,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Mandip Adhikari',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            'Chiyapatii Dot Corn Pvt Ltd',
                                                                            style:
                                                                                TextStyle(color: Colors.grey),
                                                                          ),
                                                                          Text(
                                                                            'Deadline',
                                                                            style:
                                                                                TextStyle(
                                                                              color: Colors.deepOrangeAccent,
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                          ),
                                                                          Text(
                                                                            '30th Dec 2020',
                                                                            style:
                                                                                TextStyle(
                                                                              fontWeight: FontWeight.bold,
                                                                            ),
                                                                          ),
                                                                          Row(
                                                                            children: [
                                                                              Icon(
                                                                                Icons.circle,
                                                                                color: Colors.deepOrangeAccent,
                                                                              ),
                                                                              Text('Kaam Created')
                                                                            ],
                                                                          ),
                                                                          Text(
                                                                            'NPR 0',
                                                                            style:
                                                                                TextStyle(fontWeight: FontWeight.bold),
                                                                          ),
                                                                          Container(
                                                                            margin:
                                                                                EdgeInsets.all(8.0),
                                                                            color:
                                                                                Colors.green,
                                                                            padding:
                                                                                EdgeInsets.all(4),
                                                                            child:
                                                                                Row(
                                                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                                              children: [
                                                                                TextButton(onPressed: () {}, child: Text('Edit')),
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
