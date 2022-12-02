import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:ubsclient/screens/home/dashboard.screen.dart';
import 'package:ubsclient/screens/home/more/changepasswordscreen.dart';
import 'package:ubsclient/screens/home/more/profile.screen.dart';
import 'package:ubsclient/screens/login/login.screen.dart';
import 'package:ubsclient/screens/login/loginapi.dart';
import 'package:ubsclient/screens/signup/signup.screen.dart';
import 'package:ubsclient/screens/home/more/profile.screen.dart';
import 'package:ubsclient/screens/home/more/more.screen.dart';
import 'package:ubsclient/screens/home/more/changepasswordscreen.dart';
import 'package:ubsclient/models/comment.models.dart';
import 'package:ubsclient/screens/home/more/Reviews.screen.dart';
import 'package:ubsclient/screens/home/more/personalclients.screen.dart';
import 'package:ubsclient/screens/home/more/blog.screen.dart';
import 'package:ubsclient/screens/home/more/condition.screen.dart';
import 'package:ubsclient/screens/home/more/privacy.screen.dart';

void main() {
  runApp(MaterialApp(
    initialRoute: '/login',
    routes: {
      '/login': (context) => LoginScreen(),
      '/signup': (context) => Signup(),
      '/dashboard': (context) => DashboardScreen(),
      '/profile': (context) => profile(),
      '/change': (context) => changepasswordpage(),
      '/review': (context) => Reviewpage(),
      '/client': (context) => myclients(),
      '/blog': (context) => blogscreen(),
      '/terms': (context) => terms(),
      '/privacy': (context) => privacypage(),
    },
  ));
}
