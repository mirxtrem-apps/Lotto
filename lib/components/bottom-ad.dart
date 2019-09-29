import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:loterias/constants/lotto_theme.dart';

class BottomAdmob extends StatelessWidget {
  
  final theme = LottoTheme();
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 3.0),
      color: theme.blue,
      child: AdmobBanner(
        adUnitId: 'ca-app-pub-3940256099942544/6300978111',
        adSize: AdmobBannerSize.BANNER,
      ),
    );
  }
}
