import 'package:flutter/material.dart';

class moreset extends StatelessWidget {
  const moreset({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Profile & Settings',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
            actions: [
              Icon(
                Icons.notification_add,
                color: Colors.black,
              ),
            ]),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: ListView(children: [
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Profile'),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                      leading: Icon(Icons.person),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Change Password'),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/change');
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                      leading: Icon(Icons.lock_open),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kaam',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Reviews'),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/review');
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                      leading: Icon(Icons.star),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('My Personal Clients'),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/client');
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                      leading: Icon(Icons.badge),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Upaya',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Blog'),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/blog');
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                      leading: Icon(Icons.block),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                color: Colors.grey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Kaam',
                      style: TextStyle(
                        fontSize: 25,
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Terms and Condition'),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/terms');
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                      leading: Icon(Icons.content_copy),
                    )
                  ],
                ),
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('Privacy policy'),
                      trailing: IconButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/privacy');
                        },
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                      leading: Icon(Icons.file_copy),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text('logout'),
                      trailing: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_forward_ios),
                      ),
                      leading: Icon(Icons.logout),
                    )
                  ],
                ),
              ),
            ])));
  }
}
