import 'package:flutter/material.dart';

class firstpage extends StatelessWidget {
  const firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: EdgeInsets.all(10.0),
              child: Card(
                  surfaceTintColor: Colors.red,
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
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Container(
                                margin: EdgeInsets.all(10.0),
                                color: Colors.deepOrange,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Reject',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.yellowAccent),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: Text(
                                          'Accept',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.yellowAccent,
                                          ),
                                        ))
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
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
                                                    CrossAxisAlignment.start,
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
                                                            FontWeight.bold),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.all(8.0),
                                                    color:
                                                        Colors.deepOrangeAccent,
                                                    padding: EdgeInsets.all(4),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        TextButton(
                                                            onPressed: () {},
                                                            child: Text(
                                                              'Reject',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                            )),
                                                        TextButton(
                                                            onPressed: () {},
                                                            child: Text(
                                                              'Accept',
                                                              style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                                color: Colors
                                                                    .yellowAccent,
                                                              ),
                                                            ))
                                                      ],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 20,
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
                                                                  children: [
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
                                                                      Text(
                                                                        'Service Name',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                          color:
                                                                              Colors.deepOrangeAccent,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Compliance',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Three Months return Company',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey),
                                                                      ),
                                                                      Text(
                                                                        'Client',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.deepOrangeAccent,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Mandip Adhikari',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        'Chiyapatii Dot Corn Pvt Ltd',
                                                                        style: TextStyle(
                                                                            color:
                                                                                Colors.grey),
                                                                      ),
                                                                      Text(
                                                                        'Deadline',
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.deepOrangeAccent,
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      Text(
                                                                        '30th Dec 2020',
                                                                        style:
                                                                            TextStyle(
                                                                          fontWeight:
                                                                              FontWeight.bold,
                                                                        ),
                                                                      ),
                                                                      Row(
                                                                        children: [
                                                                          Icon(
                                                                            Icons.circle,
                                                                            color:
                                                                                Colors.deepOrangeAccent,
                                                                          ),
                                                                          Text(
                                                                              'Kaam Created')
                                                                        ],
                                                                      ),
                                                                      Text(
                                                                        'NPR 0',
                                                                        style: TextStyle(
                                                                            fontWeight:
                                                                                FontWeight.bold),
                                                                      ),
                                                                      Container(
                                                                        margin:
                                                                            EdgeInsets.all(8.0),
                                                                        color: Colors
                                                                            .deepOrangeAccent,
                                                                        padding:
                                                                            EdgeInsets.all(4),
                                                                        child:
                                                                            Row(
                                                                          mainAxisAlignment:
                                                                              MainAxisAlignment.spaceBetween,
                                                                          children: [
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  'Reject',
                                                                                  style: TextStyle(
                                                                                    fontWeight: FontWeight.bold,
                                                                                    color: Colors.yellowAccent,
                                                                                  ),
                                                                                )),
                                                                            TextButton(
                                                                                onPressed: () {},
                                                                                child: Text(
                                                                                  'Aceept',
                                                                                  style: TextStyle(
                                                                                    fontWeight: FontWeight.bold,
                                                                                    color: Colors.yellowAccent,
                                                                                  ),
                                                                                ))
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
