import 'package:admob_flutter/admob_flutter.dart';
// import 'package:android_intent/android_intent.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loterias/constants/lotto_theme.dart';
import 'package:loterias/pages/LoteriaView.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'RESULTADOS',
              style: TextStyle(
                  color: LottoTheme().red, fontFamily: 'Montserrat Bold'),
            ),
            bottom: TabBar(
              labelColor: LottoTheme().red,
              unselectedLabelColor: LottoTheme().darkGrey,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'LOTERÍA',
                    style: TextStyle(fontFamily: 'Montserrat Regular'),
                  ),
                ),
                Tab(
                  child: Text(
                    'CHANCES',
                    style: TextStyle(fontFamily: 'Montserrat Regular'),
                  ),
                ),
              ],
            ),
          ),
          drawer: CustomDrawer(),
          body: TabBarView(
            children: <Widget>[
              LoteriaView(),
              Container(
                child: Text('CHANCE'),
              ),
            ],
          )),
    );
  }

  // AdmobBanner(
  //   adUnitId: 'ca-app-pub-6535090726620123/5689328696',
  //   adSize: AdmobBannerSize.BANNER,
  // )

  // intent() {
  //   final AndroidIntent intent = const AndroidIntent(
  //     action: 'action_view',
  //     data: Uri.encodeFull('https://callcentercasa.000webhostapp.com/catalogos/ESTRATEGIAS_C13_CO.pdf'),
  //     package: 'com.android.chrome'
  //   );
  //   intent.launch();
  // }
}

class CustomDrawer extends StatelessWidget {
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
                AdmobBanner(
                  adUnitId: 'ca-app-pub-6535090726620123/5689328696',
                  adSize: AdmobBannerSize.LARGE_BANNER,
                ),
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
            color: LottoTheme().blue,
            fontFamily: 'Montserrat Bold',
            fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.calendarAlt,
        color: LottoTheme().hint,
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
            color: LottoTheme().blue,
            fontFamily: 'Montserrat Bold',
            fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.calculator,
        color: LottoTheme().hint,
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
            color: LottoTheme().blue,
            fontFamily: 'Montserrat Bold',
            fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.dice,
        color: LottoTheme().hint,
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
            color: LottoTheme().blue,
            fontFamily: 'Montserrat Bold',
            fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.searchDollar,
        color: LottoTheme().hint,
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
            color: LottoTheme().blue,
            fontFamily: 'Montserrat Bold',
            fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.userCog,
        color: LottoTheme().hint,
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
            color: LottoTheme().blue,
            fontFamily: 'Montserrat Bold',
            fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.questionCircle,
        color: LottoTheme().hint,
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
            color: LottoTheme().blue,
            fontFamily: 'Montserrat Bold',
            fontSize: 14.0),
      ),
      leading: Icon(
        FontAwesomeIcons.shareAlt,
        color: LottoTheme().hint,
      ),
      onTap: () {},
    );
  }
}
