import 'package:flutter/material.dart';
import 'package:ubsclient/screens/home/dashboard.screen.dart';
import 'package:ubsclient/screens/home/more/blog/bussiness.screen.dart';
import 'package:ubsclient/screens/home/more/changepasswordscreen.dart';

import 'package:ubsclient/screens/home/more/profile.screen.dart';
import 'package:ubsclient/screens/home/more/splash.screen/splash.screen.dart';
import 'package:ubsclient/screens/home/services/accounting/accounting.screen.dart';
import 'package:ubsclient/screens/home/services/advisory/advisory.screen.dart';
import 'package:ubsclient/screens/home/services/agreementdrafting/agreementdrafting.screen.dart';
import 'package:ubsclient/screens/home/services/compliance/compliance.screen.dart';
import 'package:ubsclient/screens/home/services/conversion/conversion.screen.dart';
import 'package:ubsclient/screens/home/services/registration/otherservices/otherservices.dart';
import 'package:ubsclient/screens/home/services/registration/registration.screen.dart';
import 'package:ubsclient/screens/home/services/bank/bank.screen.dart';
import 'package:ubsclient/screens/home/services/renewals/renewals.screen.dart';
import 'package:ubsclient/screens/home/services/special%20packages/packages.screen.dart';
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
      '/login': (context) => const LoginScreen(),
      '/signup': (context) => Signup(),
      '/dashboard': (context) => const DashboardScreen(),
      '/profile': (context) => const ProfileScreen(),
      '/change': (context) => const ChangePasswordScreen(),
      '/review': (context) => const ReviewScreen(),
      '/blog': (context) => BlogScreen(),
      '/terms': (context) => const ConditionScreen(),
      '/privacy': (context) => const PrivacyScreen(),
      '/splash': (context) => const SplashScreen(),
      '/bussiness': (context) => const BussinessScreen(),
      '/notification': (context) => const NotificationScreen(),
      '/registration': (context) => const RegistrationScreen(),
      '/bank': (context) => const BankScreen(),
      '/compliance': (context) => const ComplianceScreen(),
      '/advisory': (context) => const AdvisoryScreen(),
      '/packages': (context) => const PackagesScreen(),
      '/accounting': (context) => const AccountingScreen(),
      '/agreement': (context) => const AgreementdraftingScreen(),
      '/reneval': (context) => const RenewalScreen(),
      '/conversion': (context) => const ConversionScreen(),
      '/package': (context) => const PackagesScreen(),
      '/other': (context) => const OtherScreen()
    },
  ));
}
