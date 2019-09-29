import 'package:flutter/material.dart';
import 'package:loterias/components/bottom-ad.dart';
import 'package:loterias/components/custom-drawer.dart';
import 'package:loterias/constants/lotto_theme.dart';
import 'package:loterias/pages/ChanceView.dart';
import 'package:loterias/pages/LoteriaView.dart';

class HomePage extends StatelessWidget {

  final theme = LottoTheme();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text(
              'RESULTADOS',
              style: TextStyle(
                  color: theme.red, fontFamily: 'Bold'),
            ),
            bottom: TabBar(
              labelColor: theme.red,
              unselectedLabelColor: theme.darkGrey,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'LOTERÍA',
                    style: TextStyle(fontFamily: 'Regular'),
                  ),
                ),
                Tab(
                  child: Text(
                    'CHANCES',
                    style: TextStyle(fontFamily: 'Regular'),
                  ),
                ),
              ],
            ),
          ),
          drawer: CustomDrawer(),
          bottomNavigationBar: BottomAdmob(),
          body: TabBarView(
            children: <Widget>[
              LoteriaView(),
              ChanceView()
            ],
          )),
    );
  }
}
