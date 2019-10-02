import 'package:flutter/material.dart';
import 'package:loterias/constants/lotto_theme.dart';

class CardChance extends StatelessWidget {
  final theme = LottoTheme();

  final BuildContext context;
  final String chance;
  final String numero;
  final String signo;

  CardChance({
    @required this.context,
    @required this.chance,
    @required this.numero,
    this.signo,
  });

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
            '${this.chance}',
            style: TextStyle(fontFamily: 'Bold', fontSize: 20.0),
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
            ],
          ),
          _isAstro(),
        ],
      ),
    );
  }

  _isAstro() {
    if (this.signo == "") {
      return Container();
    } else {
      return Row(
        children: <Widget>[
          Text(
            'Signo',
            style: TextStyle(fontFamily: 'Regular'),
          ),
          SizedBox(
            width: 10.0,
          ),
          Text(
            this.signo,
            style: TextStyle(
                fontFamily: 'Bold', fontSize: 24.0, color: theme.lightBlue),
          ),
        ],
      );
    }
  }
}
