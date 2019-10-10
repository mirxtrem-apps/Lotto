import 'package:flutter/material.dart';
import 'package:loterias/constants/lotto_theme.dart';
import 'package:loterias/providers/db_provider.dart';

class CardLoteria extends StatelessWidget {
  final theme = LottoTheme();

  final BuildContext context;
  final String loteria;
  final String premio;
  final String numero;
  final String serie;
  final String sorteo;
  final String fecha;

  CardLoteria(
      {@required this.context,
      @required this.loteria,
      @required this.premio,
      @required this.numero,
      @required this.serie,
      @required this.sorteo,
      @required this.fecha});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(this.context).size.width;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.white
      ),
      width: width * 0.9,
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Lotería de ${this.loteria}',
            style: TextStyle(fontFamily: 'Bold', fontSize: 20.0),
          ),
          Text(
            'Premio Mayor',
            style: TextStyle(fontFamily: 'Regular'),
          ),
          Text(
            "\$ ${this.premio}.000.000",
            style: TextStyle(
                fontFamily: 'Bold', fontSize: 36.0, color: theme.blue),
          ),
          SizedBox(height: 4),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Número',
                    style: TextStyle(fontFamily: 'Regular'),
                  ),
                  Text(
                    this.numero,
                    style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 50.0,
                        color: theme.red,
                        letterSpacing: 16.0
                    ),
                  ),
                ],
              ),
              Flexible(
                child: FractionallySizedBox(
                  widthFactor: 0.1,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 18),
                    child: Text(
                      'Serie',
                      style: TextStyle(fontFamily: 'Regular'),
                    ),
                  ),
                  Text(
                    this.serie,
                    style: TextStyle(
                        fontFamily: 'Bold',
                        fontSize: 30.0,
                        color: theme.darkGrey,
                        letterSpacing: 10.0),
                  ),
                ],
              ),
            ],
          ),
          _isSorteo(),

          // IMPORTANTE: EL BOTÓN DE SECOS QUEDA DESHABILITADO HASTA ACTUALIZAR LOS DATOS
          
          // Container(
          //   width: double.infinity,
          //   child: FlatButton(
          //     color: theme.red,
          //     child: Text(
          //       'SECOS',
          //       style: TextStyle(fontFamily: 'Bold', color: Colors.white),
          //     ),
          //     onPressed: () {
          //       DBPRovider.db.getResultsByDate(fecha);
          //     },
          //   ),
          // ),
        ],
      ),
    );
  }
  // VALIDA SI EXISTE EL NÚMERO DEL SORTEO DE LO CONTRARIO NO SE MUESTRA EN LA TARJETA
  _isSorteo() {
    if (this.sorteo == "") {
      return Container();
    } else {
      return Row(
        children: <Widget>[
          Text(
            'Sorteo',
            style: TextStyle(fontFamily: 'Regular'),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            this.sorteo,
            style: TextStyle(
                fontFamily: 'Bold', fontSize: 24.0, color: theme.lightBlue),
          ),
        ],
      );
    }
  }
}
