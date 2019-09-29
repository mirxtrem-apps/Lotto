import 'package:flutter/material.dart';
import 'package:loterias/pages/HomePage.dart';
import 'package:loterias/pages/ResultsPage.dart';
import 'package:admob_flutter/admob_flutter.dart';

void main() {
  Admob.initialize('ca-app-pub-6535090726620123~5731235882');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'LOTTO',
      initialRoute: '/',
      theme: ThemeData(
        fontFamily: 'Montserrat Regular',
        accentColor: Color.fromRGBO(217, 55, 50, 1.0),
        primaryColor: Colors.white,
        backgroundColor: Color.fromRGBO(16, 57, 88, 1.0),
        hintColor: Colors.blueGrey[200],
        disabledColor: Colors.blueGrey[200],
        inputDecorationTheme: InputDecorationTheme(
          hoverColor: Color.fromRGBO(217, 55, 50, 1.0),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.0),
              borderSide: BorderSide(color: Color.fromRGBO(217, 55, 50, 1.0)),
        ),
      ),),
      routes: {
        '/': (context) => HomePage(),
        'resultados': (context) => ResultsPage()
      },
    );
  }
}
