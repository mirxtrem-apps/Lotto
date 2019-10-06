import 'package:flutter/material.dart';

import 'package:intl/intl.dart';
import 'package:loterias/components/custom-card-chance.dart';

import 'package:loterias/constants/lotto_theme.dart';
import 'package:loterias/providers/resultados-chance.provider.dart';

class ChanceView extends StatefulWidget {
  @override
  _ChanceViewState createState() => _ChanceViewState();
}

class _ChanceViewState extends State<ChanceView> {
  final theme = LottoTheme();
  final chance = ResultadosChance();
  final day = DateFormat('dd/MM/yyyy').format(new DateTime.now());

  List<Map<String, dynamic>> _resultados = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.blue,
      child: ListView.builder(
          padding: EdgeInsets.all(16.0),
          itemCount: chance.resultadoDiario().length,
          addAutomaticKeepAlives: false,
          itemBuilder: (context, index) {
            _resultados = chance.resultadoDiario();
            return CardChance(
              context: context,
              chance: _resultados[index]["chance"],
              numero: _resultados[index]['numero'],
              signo: _resultados[index]['signo'],
            );
          }),
    );
  }
}
