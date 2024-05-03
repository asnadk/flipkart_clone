
import 'package:flip_card_clone/pages/Home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final splashDuration = 4000; 

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: splashDuration), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          child: const Image(
            image: NetworkImage("https://seeklogo.com/images/F/flipkart-logo-3F33927DAA-seeklogo.com.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
