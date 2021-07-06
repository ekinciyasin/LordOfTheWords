import 'package:flutter/material.dart';
import 'package:lord_of_the_words/models/question.dart';
import 'package:lord_of_the_words/providers/char.dart';
import 'package:lord_of_the_words/providers/questions.dart';
import 'package:provider/provider.dart';
import '../main.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings';

  final Function? setDificulty;

  const SettingsScreen({Key? key, this.setDificulty}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  Dificulty? selectedDificulty;

  @override
  void initState() {
    if (selectedDificulty == null) {
      selectedDificulty = Dificulty.MIXED;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'LEVEL',
                      style: TextStyle(fontSize: 20, color: Colors.red),
                    ),
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Mixed '),
                      Radio(
                        value: Dificulty.MIXED,
                        groupValue: selectedDificulty,
                        onChanged: (s) {
                          selectedDificulty = s as Dificulty?;

                          setState(() {});
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Easy  '),
                      Radio(
                        value: Dificulty.EASY,
                        groupValue: selectedDificulty,
                        onChanged: (s) {
                          selectedDificulty = s as Dificulty?;

                          setState(() {});
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Normal'),
                      Radio(
                        value: Dificulty.NORMAL,
                        groupValue: selectedDificulty,
                        onChanged: (s) {
                          selectedDificulty = s as Dificulty?;

                          setState(() {});
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Hard  '),
                      Radio(
                        value: Dificulty.HARD,
                        groupValue: selectedDificulty,
                        onChanged: (s) {
                          selectedDificulty = s as Dificulty?;

                          setState(() {});
                        },
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('My Words'),
                      Radio(
                        value: Dificulty.CUSTOM,
                        groupValue: selectedDificulty,
                        onChanged: (s) {
                          selectedDificulty = s as Dificulty?;

                          setState(() {});
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton.icon(
              //Butonun telefonun dibine baoşluk kalmadan yerleştirir. elevation: 0, tapTargetSize: MaterialTapTargetSize.shrinkWrap
              style: ElevatedButton.styleFrom(
                  elevation: 0,
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap),
              onPressed: () async {
                MyApp.counter = 0;
                var charProvider = Provider.of<Char>(context, listen: false);
                charProvider.openedCharIndex.clear();
                charProvider.isContinue = true;

                var isThereWord =
                    await Provider.of<Questions>(context, listen: false)
                        .setQuestionList(selectedDificulty!);

                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  elevation: 15,
                  content: isThereWord == false
                      ? const Text(
                          'There is not any word in your list!',
                          textAlign: TextAlign.center,
                        )
                      : const Text(
                          'Saved!',
                          textAlign: TextAlign.center,
                        ),
                  duration: const Duration(seconds: 2),
                ));
              },
              icon: const Icon(Icons.save),
              label: const Text('Save'),
            ),
          )
        ],
      ),
    );
  }
}
