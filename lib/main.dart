
import 'package:flutter/material.dart';

void main() {
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
        textTheme: const TextTheme(bodyText2: TextStyle(color: Colors.black, fontStyle: FontStyle.italic, fontSize: 20,)),
      ),
      home: Scaffold(
          body: Container(
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 60,),
                const SizedBox(width:103, height: 79.42),
                SizedBox(height: 20,),
                Text('Введите логин в виде 10 цифр номера телефона',),
                SizedBox(height: 20,),
                TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Телефон',
                  ),
                ),
                SizedBox(height: 20,),
                TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'Пароль',
                  ),
                ),
                SizedBox(height: 28,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {},
                  child: Text('Войти'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder (
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                  ),
                )
                ),
                SizedBox(height: 62,),
                InkWell(child: const Text ('Регистрация',),
                    onTap: () {}),
                SizedBox(height: 19,),
                InkWell(child: Text ('Забыли пароль?',),
                    onTap: () {}),
              ],),
            ),
          )
      ),
    );
  }
}
