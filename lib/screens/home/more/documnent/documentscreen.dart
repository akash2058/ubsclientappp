import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../models/documentmodel.dart';
import 'package:http/http.dart' as http;

class DocumnentScreen extends StatelessWidget {
  const DocumnentScreen({super.key});
  Future<List<DocumentModel>> postData() async {
    try {
      List<DocumentModel> documentlist = [];

      final pref = await SharedPreferences.getInstance();
      int user = pref.getInt('user')!;
      final response = await http.post(
          Uri.parse(
              'https://api.ubs.com.np/index.php?method=get_seeker_documents'),
          body: {
            "user": user.toString(),
          });
      var resposeData = jsonDecode(response.body.toString());
      if (resposeData["response"] == "success") {
        for (Map<String, dynamic> index in resposeData["document"]) {
          documentlist.add(DocumentModel.fromMap(index));
        }
        return documentlist;
      } else {
        return documentlist;
      }
    } catch (err) {
      throw Exception(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 2,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: const Text(
            'Documents',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: FutureBuilder(
          future: postData(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var data = snapshot.data!;
              return ListView.builder(
                  itemCount: data.length,
                  itemBuilder: ((context, index) {
                    return Card(
                        margin: EdgeInsets.all(10),
                        child: Container(
                          margin: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(data[index].userID),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                data[index].documentName,
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Text(data[index].addeddate),
                                  SizedBox(
                                    width: 211,
                                  ),
                                  InkWell(
                                      onTap: () async {
                                        String url = data[index].documentLink;
                                        await launchUrl(Uri.parse(url));
                                      },
                                      child: Icon(Icons.visibility)),
                                ],
                              )
                            ],
                          ),
                        ));
                  }));
            }
            return Center(
              child: CircularProgressIndicator(color: Colors.red),
            );
          },
        ));
  }
}
