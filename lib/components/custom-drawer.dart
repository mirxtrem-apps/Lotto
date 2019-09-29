import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loterias/constants/lotto_theme.dart';

class CustomDrawer extends StatelessWidget {

  final theme = LottoTheme();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[

                SizedBox(
                  height: 60.0,
                ),
                _resultadosAnteriores(),
                _calculadora(),
                _numeroSuerte(),
                _guiaChance(),
                _configuracion(),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                  child: Divider(),
                ),
                _acercaDe(),
                _compartirApp(),
                SizedBox(
                  height: 50.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _resultadosAnteriores() {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      title: Text(
        'Resultados anteriores',
        style: TextStyle(
            color: theme.blue, fontFamily: 'Montserrat Bold', fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.calendarAlt,
        color: theme.hint,
      ),
      onTap: () {},
    );
  }

  _calculadora() {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      title: Text(
        'Calculadora',
        style: TextStyle(
            color: theme.blue, fontFamily: 'Montserrat Bold', fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.calculator,
        color: theme.hint,
      ),
      onTap: () {},
    );
  }

  _numeroSuerte() {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      title: Text(
        'Número de la suerte',
        style: TextStyle(
            color: theme.blue, fontFamily: 'Montserrat Bold', fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.dice,
        color: theme.hint,
      ),
      onTap: () {},
    );
  }

  _guiaChance() {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      title: Text(
        'Guía de chance',
        style: TextStyle(
            color: theme.blue, fontFamily: 'Montserrat Bold', fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.searchDollar,
        color: theme.hint,
      ),
      onTap: () {},
    );
  }

  _configuracion() {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      title: Text(
        'Configuración',
        style: TextStyle(
            color: theme.blue, fontFamily: 'Montserrat Bold', fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.userCog,
        color: theme.hint,
      ),
      onTap: () {},
    );
  }

  _acercaDe() {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      title: Text(
        'Acerca de',
        style: TextStyle(
            color: theme.blue, fontFamily: 'Montserrat Bold', fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.questionCircle,
        color: theme.hint,
      ),
      onTap: () {},
    );
  }

  _compartirApp() {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 16.0),
      title: Text(
        'Compartir la app',
        style: TextStyle(
            color: theme.blue, fontFamily: 'Montserrat Bold', fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.shareAlt,
        color: theme.hint,
      ),
      onTap: () {},
    );
  }
}
