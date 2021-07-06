import 'dart:async';
import 'package:flutter/material.dart';
import 'package:lord_of_the_words/screens/question_screen.dart';
import 'package:lord_of_the_words/screens/user_words_screen.dart';
import 'settings_screen.dart';

class MyHomePage extends StatefulWidget {
  static const routeName = '/home';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );
    Timer(Duration(milliseconds: 500), () => _animationController!.forward());
    super.initState();
  }

  @override
  void dispose() {
    _animationController?..dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Word Games'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                        Colors.black.withOpacity(0.2), BlendMode.dstATop),
                    fit: BoxFit.cover,
                    image: const AssetImage("assets/images/menu_image.jpg"))),
            child: Center(
              child: SingleChildScrollView(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MenuButton(
                          tweenBegin: -1,
                          animationController: _animationController!,
                          text: '      START      ',
                          fontsize: 24,
                          routeName: QuestionScreen.routeName),
                      SizedBox(height: 20),
                      MenuButton(
                        tweenBegin: 1,
                        animationController: _animationController!,
                        routeName: UserWordsScreen.routeName,
                        text: '  My Words  ',
                        fontsize: 14,
                      ),
                      SizedBox(height: 20),
                      MenuButton(
                        tweenBegin: -1,
                        animationController: _animationController!,
                        routeName: SettingsScreen.routeName,
                        text: '  Settings  ',
                        fontsize: 14,
                      ),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class MenuButton extends StatelessWidget {
  AnimationController animationController;
  String? text;
  double? fontsize;
  String? routeName;
  double? tweenBegin;

  MenuButton({
    this.tweenBegin,
    this.text,
    this.fontsize,
    this.routeName,
    required this.animationController,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(begin: Offset(tweenBegin!, 0), end: Offset.zero)
          .animate(animationController),
      child: FadeTransition(
        opacity: animationController,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 5,
            padding: EdgeInsets.all(20),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18.0),
            ),
          ),
          onPressed: () {
            Navigator.of(context).pushNamed(routeName!);
          },
          child: Text(
            text!,
            style: TextStyle(fontSize: fontsize, fontFamily: 'Girassol'),
          ),
        ),
      ),
    );
  }
}
