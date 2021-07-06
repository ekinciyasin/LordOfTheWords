import 'package:clippy_flutter/polygon.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lord_of_the_words/providers/char.dart';
import 'package:provider/provider.dart';

class CharPolygon extends StatelessWidget {
  final int? charsLength;
  final MediaQueryData? mediaQuery;
  String? answerChar;
  int? answerIndex;

  bool? isCorrectUserChar = null;

  CharPolygon({
    @required this.mediaQuery,
    this.answerChar,
    @required this.charsLength,
    @required this.answerIndex,
  });

  @override
  Widget build(BuildContext context) {
    print('rebuild');

    final textController = TextEditingController();
    bool _enabled = true;

    Color _color() {
      if (isCorrectUserChar == null) {
        return Color(0xFF5AD4FC);
      } else if (isCorrectUserChar == true) {
        return Colors.greenAccent;
      } else {
        return Colors.red;
      }
    }

    return Polygon(
      sides: 7,
      child: Consumer<Char>(
        builder: (ctx, charProvider, ch) => Container(
          decoration: BoxDecoration(
            color: _color(),
          ),
          width: 45,
          height: 45,
          child: Center(
            child: charProvider.openedCharIndex
                    .any((element) => element == answerIndex)
                ? Container(
                    color: Colors.greenAccent,
                    child: Center(
                      child: Text(
                        answerChar!,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  )
                : TextField(
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white),
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    keyboardAppearance: Brightness.light,
                    onChanged: (val) {
                      charProvider.isContinue = false;
                      charProvider.isCorrectChar(answerIndex!, answerChar!,
                          val.toLowerCase(), context);
                      isCorrectUserChar = charProvider.isCorrect;
                    },
                    enabled: _enabled,
                    cursorWidth: 10,
                    cursorHeight: 20,
                    cursorRadius: Radius.circular(5),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,

                      contentPadding: EdgeInsets.fromLTRB(16, 0, 0, 4),
                      counter:
                          Offstage(), //textinputun altında bulunan sayıcıyı kapatır.
                    ),
                    inputFormatters: [
                      FilteringTextInputFormatter.allow(RegExp("[a-zA-Z]"))
                    ],
                    maxLength: 1,
                    controller: textController),
          ),
        ),
      ),
    );
  }
}
