import 'package:flutter/material.dart';
import 'package:lord_of_the_words/db/user_words_db.dart';
import 'package:lord_of_the_words/models/question.dart';
import 'package:lord_of_the_words/screens/user_words_screen.dart';

class EditUserWordScreen extends StatefulWidget {
  const EditUserWordScreen({Key? key}) : super(key: key);

  static const routeName = '/edit-user-word';

  @override
  _EditUserWordScreenState createState() => _EditUserWordScreenState();
}

class _EditUserWordScreenState extends State<EditUserWordScreen> {
  final _defFocusNode = FocusNode();
  final _form = GlobalKey<FormState>();
  var _editedWord = Question(text: '', answer: '');

  @override
  void dispose() {
    _defFocusNode.dispose();
    super.dispose();
  }

  void _saveWord() {
    final isValid = _form.currentState!.validate();
    if (!isValid) {
      return;
    }
    _form.currentState!.save();
    addUserWord();

    //sayfa sonunda kaydedildi mesajı çıkarır.
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: const Text(
        'Saved!',
        textAlign: TextAlign.center,
      ),
      duration: Duration(seconds: 1),
    ));
  }

  Future addUserWord() async {
    final userWord = _editedWord;
    await UserWordsDatabase.instance.create(userWord);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
          icon: new Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context)
              .pushReplacementNamed(UserWordsScreen.routeName),
        ),
        title: const Text('Edit Word'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: _saveWord,
              icon: Icon(
                Icons.save,
                size: 30,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          key: _form,
          child: ListView(
            children: [
              const Text(
                'Create your own word.',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Divider(),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Word',
                ),
                textInputAction: TextInputAction.next,
                onFieldSubmitted: (_) {
                  FocusScope.of(context).requestFocus(_defFocusNode);
                },
                onSaved: (value) {
                  _editedWord =
                      Question(answer: value!, text: _editedWord.text);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a word!';
                  }
                  if (value.length > 20) {
                    return 'Please specify a value of less than 20 characters.';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Defination'),
                maxLines: 4,
                keyboardType: TextInputType.multiline,
                textInputAction: TextInputAction.done,
                focusNode: _defFocusNode,
                onFieldSubmitted: (_) async {
                  _saveWord();
                },
                onSaved: (value) {
                  _editedWord =
                      Question(answer: _editedWord.answer, text: value!);
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter a defination!';
                  }
                  if (value.length > 200) {
                    return 'Please specify a value of less than 200 characters.';
                  }
                  return null;
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
