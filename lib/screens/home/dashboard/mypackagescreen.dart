import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'package:ubsclient/models/package.model.dart';

class PackagePage extends StatelessWidget {
  const PackagePage({super.key});
  Future<List<PackageModel>> postData() async {
    try {
      List<PackageModel> packagelist = [];

      final pref = await SharedPreferences.getInstance();
      int user = pref.getInt('user')!;
      final response = await http.post(
          Uri.parse(
              'https://api.ubs.com.np/index.php?method=get_seeker_sme_package'),
          body: {
            "user": user.toString(),
          });
      var resposeData = jsonDecode(response.body.toString());
      if (resposeData["response"] == "success") {
        for (Map<String, dynamic> index in resposeData["packageData"]) {
          packagelist.add(PackageModel.fromMap(index));
        }
        return packagelist;
      } else {
        return packagelist;
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
                            padding: const EdgeInsets.all(8),
                            child: Container(
                                child: Card(
                                    elevation: 5,
                                    color: Colors.white,
                                    child: Container(
                                        margin: EdgeInsets.all(10),
                                        child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.stretch,
                                            children: [
                                              Text(
                                                'Company Name:',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                data[index].companyName,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                'Package Type',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                data[index].packageType,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                'Visited Period',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                data[index].visit,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                'Invoice Period',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 3),
                                              Text(
                                                data[index].invoicePeriod,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Text(
                                                'Start Date:',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 3,
                                              ),
                                              Text(
                                                data[index].startDate,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(
                                                height: 8,
                                              ),
                                              Text(
                                                'End Date:',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 3),
                                              Text(
                                                data[index].endDate,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 8),
                                              Text(
                                                'Fee',
                                                style: TextStyle(
                                                    color: Colors.blue,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              SizedBox(height: 3),
                                              Text(
                                                data[index].price,
                                                style: TextStyle(
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
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
