import 'package:flutter/material.dart';

import 'package:lord_of_the_words/screens/my_home_page.dart';

class Loading extends StatefulWidget {
  static const routename = '/loading';
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void initState() {
    super.initState();
    //setting the seconds to 2, you can set as per your
    // convenience
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushAndRemoveUntil(context,
          MaterialPageRoute(builder: (context) => MyHomePage()), (_) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
