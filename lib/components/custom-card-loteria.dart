import 'package:flutter/material.dart';
import 'package:loterias/constants/lotto_theme.dart';

class CardLoteria extends StatelessWidget {
  final theme = LottoTheme();

  final BuildContext context;
  final String loteria;
  final String premio;
  final String numero;
  final String serie;
  final String sorteo;

  CardLoteria(
      {@required this.context,
      @required this.loteria,
      @required this.premio,
      @required this.numero,
      @required this.serie,
      @required this.sorteo});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(this.context).size.width;

    return Container(
      width: width * 0.9,
      margin: EdgeInsets.only(bottom: 10.0),
      padding: EdgeInsets.all(16.0),
      color: Colors.white,
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
            "${this.premio}'000.000",
            style: TextStyle(
                fontFamily: 'Bold', fontSize: 36.0, color: theme.blue),
          ),
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
                        letterSpacing: 16.0),
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
                  Text(
                    'Serie',
                    style: TextStyle(fontFamily: 'Regular'),
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
          Row(
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
          ),
          Container(
            width: double.infinity,
            child: FlatButton(
              color: theme.red,
              child: Text(
                'SECOS',
                style: TextStyle(fontFamily: 'Bold', color: Colors.white),
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
