import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ubsclient/screens/home/Documnent/Serivces/Services.screen.dart';
import 'package:ubsclient/screens/login/login.screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) {
      Navigator.of(context).pushReplacement(
          CupertinoPageRoute(builder: (ctx) => const LoginScreen()));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Align(
            alignment: Alignment.center,
          ),
          Image(
            image: AssetImage('assets/images/logo.jpg'),
          ),
          Text(
            'Upaya Services.PVT.LTD',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 21),
          ),
          SpinKitFadingCircle(
            color: Colors.amberAccent,
            size: 50,
          ),
        ],
      ),
    );
  }
}
