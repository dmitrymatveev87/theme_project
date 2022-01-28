import 'package:flutter/material.dart';

void main () {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide());

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.yellow,),
        textTheme: const TextTheme(bodyText2: TextStyle(
          color: Colors.black, fontStyle: FontStyle.italic, fontSize: 20,)),
      ),
    );
  }
  }