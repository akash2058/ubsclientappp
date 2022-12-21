import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class PackagePage extends StatelessWidget {
  const PackagePage({super.key});
  Future<List<ActiveKaamModel>> postData() async {
    try {
      List<ActiveKaamModel> packagelist = [];

      final pref = await SharedPreferences.getInstance();
      int user = pref.getInt('user')!;
      final response = await http.post(
          Uri.parse('https://api.ubs.com.np/index.php?method=get_kaam_history'),
          body: {
            "user": user.toString(),
          });
      var resposeData = jsonDecode(response.body.toString());
      if (resposeData["response"] == "success") {
        for (Map<String, dynamic> index in resposeData["packageData"]) {
          packagelist.add(ActiveKaamModel.fromMap(index));
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
    return Scaffold();
  }
}
