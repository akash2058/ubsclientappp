import 'package:flutter/material.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView(children: [
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          child: Column(
            children: [
              const ListTile(
                  title: Text(
                    'Account',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  tileColor: Color.fromARGB(255, 226, 218, 218)),
              ListTile(
                onTap: () {
                  Navigator.pushNamed(context, '/profile');
                },
                title: const Text('Profile'),
                trailing: IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  icon: const Icon(Icons.arrow_forward_ios),
                ),
                leading: const Icon(Icons.person),
              ),
              const Divider(
                color: Colors.black,
                height: 15,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                onTap: (() {
                  Navigator.pushNamed(context, '/change');
                }),
                title: const Text(' Change Password'),
                trailing: const Icon(
                  (Icons.arrow_forward_ios),
                ),
                leading: const Icon(Icons.lock_open_outlined),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          child: Column(
            children: [
              const ListTile(
                  title: Text(
                    'Kaam',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  tileColor: Color.fromARGB(255, 226, 218, 218)),
              ListTile(
                title: const Text('Documents'),
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const Icon(Icons.copy),
                onTap: () {
                  Navigator.pushNamed(context, '/documnent');
                },
              ),
              const Divider(
                color: Colors.black,
                height: 15,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const Icon(Icons.star),
                onTap: () {
                  Navigator.pushNamed(context, '/review');
                },
                title: const Text('Reviews'),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          child: Column(
            children: [
              const ListTile(
                  title: Text(
                    'Upaya',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  tileColor: Color.fromARGB(255, 226, 218, 218)),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const Icon(Icons.gif_rounded),
                onTap: () {
                  Navigator.pushNamed(context, '/blog');
                },
                focusColor: Colors.purpleAccent,
                title: const Text('Blog'),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          elevation: 5,
          shape: const RoundedRectangleBorder(),
          child: Column(
            children: [
              const ListTile(
                  title: Text(
                    'Legal',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  tileColor: Color.fromARGB(255, 226, 218, 218)),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const Icon(Icons.flood),
                onTap: () {
                  Navigator.pushNamed(context, '/terms');
                },
                title: const Text('Terms and Conditions'),
              ),
              const Divider(
                color: Colors.black,
                height: 5,
                thickness: 1,
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const Icon(Icons.folder),
                onTap: () {
                  Navigator.pushNamed(context, '/privacy');
                },
                title: const Text('Privacy and policy'),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Card(
          elevation: 5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
              side: const BorderSide(width: 0.5)),
          child: Column(
            children: [
              ListTile(
                trailing: const Icon(Icons.arrow_forward_ios),
                leading: const Icon(Icons.logout),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return Center(
                          child: Dialog(
                            backgroundColor: Colors.blue[200],
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Container(
                              margin: EdgeInsets.all(20),
                              height: 210,
                              width: 210,
                              child: Column(
                                children: [
                                  const CircleAvatar(
                                    radius: 50,
                                    backgroundImage:
                                        AssetImage('assets/images/vv.png'),
                                  ),
                                  const Text(
                                    'Are you Sure you want to ',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const Text(
                                    'Logout ?',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 15,
                                  ),
                                  Row(
                                    children: [
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.red,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: const Text('Cancel')),
                                      const SizedBox(
                                        width: 85,
                                      ),
                                      ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              backgroundColor: Colors.green,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10))),
                                          onPressed: () {
                                            Navigator.pushNamed(
                                                context, '/login');
                                          },
                                          child: const Text('Logout')),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      });
                },
                title: const Text(
                  'Logout',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}
