import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:loterias/components/bottom-ad.dart';
import 'package:loterias/components/custom-drawer.dart';
import 'package:loterias/constants/lotto_theme.dart';
import 'package:loterias/pages/ChanceView.dart';
import 'package:loterias/pages/LoteriaView.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final theme = LottoTheme();

  var day = new DateFormat.EEEE('es-ES').format(new DateTime.now());
  var date = new DateFormat.yMMMd('es-ES').format(new DateTime.now());

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'RESULTADOS',
                  style: TextStyle(
                      color: Colors.white, fontSize: 20, fontFamily: 'Bold'),
                ),
                Text(
                  "${day.toString().toUpperCase()}, ${date.toString().toUpperCase()}",
                  style: TextStyle(
                      color: Colors.white, fontSize: 14, fontFamily: 'Regular'),
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(FontAwesomeIcons.calendarAlt, color: Colors.white),
                onPressed: () {
                  _showDatePicker(context);
                },
              ),
            ],
            bottom: TabBar(
              labelColor: theme.yellow,
              unselectedLabelColor: Color.fromRGBO(255, 255, 255, .6),
              indicatorColor: theme.yellow,
              labelStyle: TextStyle(fontFamily: 'Bold'),
              unselectedLabelStyle: TextStyle(fontFamily: 'Regular'),
              tabs: <Widget>[
                Tab(
                  child: Text('LOTERÍA'),
                ),
                Tab(
                  child: Text('CHANCES'),
                ),
              ],
            ),
          ),
          drawer: CustomDrawer(),
          bottomNavigationBar: BottomAdmob(),
          body: TabBarView(
            children: <Widget>[LoteriaView(), ChanceView()],
          )),
    );
  }

  void _showDatePicker(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2019),
        lastDate: DateTime.now());

    if (picked != null) {
      print(picked.toLocal());
      setState(() {
        //fecha = picked;
        day = new DateFormat.EEEE('es-ES').format(picked.toLocal());
        date = new DateFormat.yMMMd('es-ES').format(picked.toLocal());
      });
    }
  }
}
