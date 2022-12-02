import 'package:flutter/material.dart';

import 'package:ubsclient/screens/login/login.header.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text(
              'Profile',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.notification_add,
                    color: Colors.black,
                  ))
            ]),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          const Expanded(
            child: phead(),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              child: SingleChildScrollView(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Full Name"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(40),
                                ),
                                hintText: 'Enter your Name'),
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Date of birth"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Enter your Date of birth')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Gender"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                            suffixIcon: IconButton(
                                onPressed: () {}, icon: Icon(Icons.eject)),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40),
                            ),
                          )),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Phone Number"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.arrow_forward_ios),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Enter your Number')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Alternate Phone"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  suffixIcon: Icon(Icons.arrow_forward_ios),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  hintText: 'Enter your Phone Number')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("E-mail"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Enter your email')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("PAN No."),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Enter Your PAN Number')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Bank Account No."),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Enter Your Bank A/c')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Bank Branch & Location"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Enter Your Bank Location')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Father Name"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Text')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Grand Father Name"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Text')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Permanent Address"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Enter Your address')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Temporary Address"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Enter Your Address')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Documents(Citizenship And Other Relevant)"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Text')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("Experience (In Years)"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Text')),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: const [
                            Text("No of clients Served(Kaam completed)"),
                            Text(
                              "*",
                              style: TextStyle(color: Colors.red, fontSize: 22),
                            ),
                          ]),
                          TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Text')),
                        ],
                      ),
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(children: const [
                              Text("Afflaited institution"),
                              Text(
                                "*",
                                style:
                                    TextStyle(color: Colors.red, fontSize: 22),
                              ),
                            ]),
                            TextFormField(
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40),
                                  ),
                                  hintText: 'Text'),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            OutlinedButton(
                                style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.blueAccent,
                                ),
                                onPressed: () {},
                                child: Center(
                                  child: Text(
                                    'Save My Profile',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ))
                          ]),
                    ]),
              ),
            ),
          ),
        ]));
  }
}

class phead extends StatelessWidget {
  const phead({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage("assets/images/ee.jpg"),
        opacity: 0.50,
        fit: BoxFit.cover,
      )),
    );
  }
}
