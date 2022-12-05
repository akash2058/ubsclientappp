import 'package:flutter/material.dart';

class moreset extends StatelessWidget {
  const moreset({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: ListView(children: [
        Container(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: BorderSide(strokeAlign: StrokeAlign.inside)),
            child: Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/profile');
                  },
                  title: Text('Profile'),
                  trailing: IconButton(
                    highlightColor: Colors.purpleAccent,
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    icon: Icon(Icons.arrow_forward_ios),
                  ),
                  leading: Icon(Icons.person),
                ),
                Divider(
                  color: Colors.black,
                  height: 15,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  onTap: (() {
                    Navigator.pushNamed(context, '/change');
                  }),
                  title: Text(' Change Password'),
                  trailing: Icon(
                    (Icons.arrow_forward_ios),
                  ),
                  leading: Icon(Icons.lock_open_outlined),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: const BorderSide(width: 1.5)),
            child: Column(
              children: [
                ListTile(
                  focusColor: Colors.purple,
                  title: Text(
                    'Kaam',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  tileColor: Colors.grey,
                ),
                ListTile(
                  title: Text('Upaya Proffessional'),
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.person),
                  onTap: () {},
                ),
                Divider(
                  color: Colors.black,
                  height: 15,
                  thickness: 2,
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  focusColor: Colors.purpleAccent,
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.star),
                  onTap: () {
                    Navigator.pushNamed(context, '/review');
                  },
                  title: Text('Reviews'),
                )
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: const BorderSide(width: 1.5)),
            child: Column(
              children: [
                ListTile(
                  focusColor: Colors.purpleAccent,
                  title: Text(
                    'Upaya',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  tileColor: Colors.grey,
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.gif_rounded),
                  onTap: () {
                    Navigator.pushNamed(context, '/blog');
                  },
                  focusColor: Colors.purpleAccent,
                  title: Text('Blog'),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Card(
            surfaceTintColor: Colors.red,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: const BorderSide(width: 1.5)),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Kaam',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  tileColor: Colors.grey,
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.copy),
                  onTap: () {
                    Navigator.pushNamed(context, '/terms');
                  },
                  title: Text('Terms and Conditions'),
                ),
                Divider(
                  color: Colors.black,
                  height: 5,
                  thickness: 1,
                  indent: 20,
                  endIndent: 20,
                ),
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.content_copy_outlined),
                  onTap: () {
                    Navigator.pushNamed(context, '/privacy');
                  },
                  title: Text('Privacy and policy'),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          child: Card(
            shadowColor: Colors.green,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
                side: const BorderSide(width: 1.5)),
            child: Column(
              children: [
                ListTile(
                  trailing: Icon(Icons.arrow_forward_ios),
                  leading: Icon(Icons.logout),
                  onTap: () {},
                  title: Text(
                    'Logout',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}
