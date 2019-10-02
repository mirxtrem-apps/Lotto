import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
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
  final day = new DateFormat.EEEE('es-ES').format(new DateTime.now());
  final date = new DateFormat.yMMMd('es-ES').format(new DateTime.now());

  List<Map<String, dynamic>> _resultados = [];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: theme.blue,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(5.0),
            // child: Container(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  '${day.toString().toUpperCase()}, ${date.toString()}',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  width: 10.0,
                ),
                IconButton(
                  icon: Icon(FontAwesomeIcons.calendarAlt, color: Colors.white),
                  onPressed: () {},
                )
              ],
            ),
          ),
          Flexible(
            flex: 1,
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
                  );
                }),
          ),
        ],
      ),
    );
  }
}
