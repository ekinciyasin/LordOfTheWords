import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lord_of_the_words/providers/char.dart';
import 'package:lord_of_the_words/providers/questions.dart';
import 'package:lord_of_the_words/providers/user_words.dart';
import 'package:lord_of_the_words/screens/edit_user_word.dart';
import 'package:lord_of_the_words/screens/loading.dart';

import 'package:lord_of_the_words/screens/my_home_page.dart';
import 'package:lord_of_the_words/screens/question_screen.dart';
import 'package:lord_of_the_words/screens/settings_screen.dart';
import 'package:lord_of_the_words/screens/user_words_screen.dart';
import 'package:provider/provider.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static int totalScore = 0;
  static int counter = 0;
  static bool totalScoreFlag = true;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (ctx) => Questions(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => Char(),
        ),
        ChangeNotifierProvider(
          create: (ctx) => UserWords(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Word Games',
        theme: ThemeData(
          primaryColorLight: Color(0xFFB2EBF2),
          primaryColorDark: Color(0xFF0097A7),
          primarySwatch: Colors.blue,
          accentColor: Color(0xFF536DFE),
        ),
        initialRoute: Loading.routename,
        routes: {
          MyHomePage.routeName: (ctx) => MyHomePage(),
          Loading.routename: (ctx) => Loading(),
          QuestionScreen.routeName: (ctx) => QuestionScreen(),
          UserWordsScreen.routeName: (ctx) => UserWordsScreen(),
          SettingsScreen.routeName: (ctx) => SettingsScreen(),
          EditUserWordScreen.routeName: (ctx) => EditUserWordScreen(),
        },
      ),
    );
  }
}
