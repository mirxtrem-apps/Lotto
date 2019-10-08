import 'package:flutter/material.dart';

import 'package:loterias/components/custom-card-loteria.dart';
import 'package:loterias/constants/lotto_theme.dart';
import 'package:loterias/providers/resultados-loterias.provider.dart';

class LoteriaView extends StatefulWidget {
  @override
  _LoteriaViewState createState() => _LoteriaViewState();
}

class _LoteriaViewState extends State<LoteriaView> {
  final theme = LottoTheme();
  final lotto = ResultadosLoterias();

  List<Map<String, dynamic>> _resultados = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.blue,
      child: ListView.builder(
          padding: EdgeInsets.all(16.0),
          itemCount: lotto.resultadoDiario().length,
          addAutomaticKeepAlives: false,
          itemBuilder: (context, index) {
            _resultados = lotto.resultadoDiario();
            return CardLoteria(
              context: context,
              loteria: _resultados[index]["loteria"],
              premio: _resultados[index]['premio'],
              numero: _resultados[index]['numero'],
              serie: _resultados[index]['serie'],
              sorteo: _resultados[index]['sorteo'],
              fecha: "",
            );
          }),
    );
  }
}
