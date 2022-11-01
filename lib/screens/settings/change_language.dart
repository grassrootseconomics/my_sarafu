// ignore: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:grassroots_flutter/base_widgets/Custom_appbar.dart';

enum Language {
  English,
  French,
  Chinese,
  Spanish,
  German,
}

class ChangeLanugage extends StatefulWidget {
  const ChangeLanugage({super.key});

  @override
  State<ChangeLanugage> createState() => _ChangeLanugageState();
}

class _ChangeLanugageState extends State<ChangeLanugage> {
    Language? language = Language.English;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(inputtext: "Change Language"),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding:  EdgeInsets.symmetric(vertical:10.0),
              child:  Text("Choose Your Language", style: TextStyle(fontSize: 15),textAlign: TextAlign.left,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: buildRadioListTile(Language.English, "English"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: buildRadioListTile(Language.French, "French"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: buildRadioListTile(Language.Chinese, "Chinese"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: buildRadioListTile(Language.Spanish, "Spanish"),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:8.0),
              child: buildRadioListTile(Language.German, "German"),
            ),
          ],
        ),
      ),
    );
  }
ListTile buildRadioListTile(Language valueLanguage,String text) {
    return  ListTile(
          title: Text(text, style: const TextStyle(fontSize: 20),),
          trailing: Radio<Language>(
            splashRadius: 20,
            value: valueLanguage,
            groupValue: language,
            onChanged: (Language? value) {
              setState(() {
                language = value;
              });
            },
          ),
        );
  }
}
