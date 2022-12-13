import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/Documnent/Serivces/registrationscreen.dart';
import 'package:ubsclient/screens/home/dashboard.screen.dart';
import 'package:ubsclient/screens/home/more/blog/bussiness.screen.dart';
import 'package:ubsclient/screens/home/more/changepasswordscreen.dart';
import 'package:ubsclient/screens/home/more/personalclients.screen.dart';
import 'package:ubsclient/screens/home/more/profile.screen.dart';
import 'package:ubsclient/screens/home/more/splash.screen/splash.screen.dart';
import 'package:ubsclient/screens/home/services/registration/registration.screen.dart';
import 'package:ubsclient/screens/home/services/bank/bank.screen.dart';
import 'package:ubsclient/screens/login/login.screen.dart';
import 'package:ubsclient/screens/signup/signup.screen.dart';
import 'package:ubsclient/screens/home/more/Reviews.screen.dart';
import 'package:ubsclient/screens/home/more/blog/blog.screen.dart';
import 'package:ubsclient/screens/home/more/condition.screen.dart';
import 'package:ubsclient/screens/home/more/privacy.screen.dart';
// ignore: duplicate_import
import 'package:ubsclient/screens/home/more/blog/bussiness.screen.dart';
import 'package:ubsclient/screens/home/more/notification/notification.screen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/splash',
    routes: {
      '/login': (context) => LoginScreen(),
      '/signup': (context) => Signup(),
      '/dashboard': (context) => DashboardScreen(),
      '/profile': (context) => ProfileScreen(),
      '/change': (context) => ChangePasswordScreen(),
      '/review': (context) => ReviewScreen(),
      '/blog': (context) => BlogScreen(),
      '/terms': (context) => ConditionScreen(),
      '/privacy': (context) => PrivacyScreen(),
      '/splash': (context) => SplashScreen(),
      '/bussiness': (context) => BussinessScreen(),
      '/notification': (context) => NotificationScreen(),
      '/registration': (context) => RegistrationScreen(),
      '/bank': (context) => BankScreen(),
    },
  ));
}
