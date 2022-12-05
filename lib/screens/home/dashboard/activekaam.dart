import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Activepage extends StatelessWidget {
  Activepage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Container(
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(5),
        child: Card(
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(width: 1.5)),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(
              children: const [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10)),
                Text(
                  'Id',
                ),
                SizedBox(
                  width: 200,
                ),
                Text('date'),
              ],
            ),
            Column(children: [
              const Text(
                'Service Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Client',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Deadline',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
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
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 65, vertical: 20)),
                  Icon(
                    Icons.circle,
                    color: Colors.blueAccent,
                  ),
                  Text('Kaam Created')
                ],
              ),
              const Text(
                'NPR 0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: EdgeInsets.all(5.0),
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                  ],
                ),
              ),
            ]),
          ]),
        ),
      ),
      Container(
        padding: EdgeInsets.all(5.0),
        margin: EdgeInsets.all(5),
        child: Card(
          shadowColor: Colors.black,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: const BorderSide(width: 1.5)),
          child: Column(mainAxisSize: MainAxisSize.min, children: [
            Row(
              children: const [
                Padding(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 10)),
                Text(
                  'Id',
                ),
                SizedBox(
                  width: 200,
                ),
                Text('date'),
              ],
            ),
            Column(children: [
              const Text(
                'Service Name',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueAccent,
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Client',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
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
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Deadline',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.blueAccent,
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
                  Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 65, vertical: 20)),
                  Icon(
                    Icons.circle,
                    color: Colors.blueAccent,
                  ),
                  Text('Kaam Created')
                ],
              ),
              const Text(
                'NPR 0',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Container(
                margin: const EdgeInsets.all(5.0),
                padding: EdgeInsets.all(5.0),
                color: Colors.blueAccent,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Edit',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.white),
                        )),
                  ],
                ),
              ),
            ]),
          ]),
        ),
      ),
      Container(
          padding: EdgeInsets.all(5.0),
          margin: EdgeInsets.all(5),
          child: Card(
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: const BorderSide(width: 1.5)),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Row(
                  children: const [
                    Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 10)),
                    Text(
                      'Id',
                    ),
                    SizedBox(
                      width: 200,
                    ),
                    Text('date'),
                  ],
                ),
                Column(children: [
                  const Text(
                    'Service Name',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueAccent,
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Client',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
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
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Deadline',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.blueAccent,
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
                      Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 65, vertical: 20)),
                      Icon(
                        Icons.circle,
                        color: Colors.blueAccent,
                      ),
                      Text('Kaam Created')
                    ],
                  ),
                  const Text(
                    'NPR 0',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: const EdgeInsets.all(5.0),
                    padding: EdgeInsets.all(5.0),
                    color: Colors.blueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              'Edit',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            )),
                      ],
                    ),
                  ),
                ]),
              ])))
    ]));
  }
}
