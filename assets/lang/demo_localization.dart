import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DemoLocalization{
  final Locale locale;

  DemoLocalization(this.locale);

  static DemoLocalization of(BuildContext context){
    return Localizations.of<DemoLocalization>(context, DemoLocalization);
  }

  Map<String, String> _localizedValues;
   Future load() async {
     String jsonStringValues =
         await rootBundle.loadString('assets/lang/${locale.languageCode}.json');
   }
}