import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:loterias/constants/lotto_theme.dart';
import 'package:loterias/pages/HomePage.dart';
import 'package:loterias/pages/ResultsPage.dart';
import 'package:admob_flutter/admob_flutter.dart';

void main() {
  Admob.initialize('ca-app-pub-6535090726620123~5731235882');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  final theme = LottoTheme();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('es')
      ],
      debugShowCheckedModeBanner: false,
      title: 'LOTTO',
      initialRoute: '/',
      theme: ThemeData(
        fontFamily: 'Regular',
        accentColor: theme.red,
        primaryColor: Colors.red,
        backgroundColor: theme.blue,
        hintColor: Colors.blueGrey[200],
        disabledColor: Colors.blueGrey[200],
        inputDecorationTheme: InputDecorationTheme(
          hoverColor: theme.hint,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(0.0),
              borderSide: BorderSide(color: theme.red),
        ),
      ),),
      routes: {
        '/': (context) => HomePage(),
        'resultados': (context) => ResultsPage()
      },
    );
  }
}
