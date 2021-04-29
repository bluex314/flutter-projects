import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'networking.dart';

class ExchangeRate {
  String currency;
  ExchangeRate({@required this.currency});
  Networking networking;

  // function for getting data for currency
  Future getExchangeRate(String rateType) async {
    String url =
        'https://rest.coinapi.io/v1/exchangerate/$rateType/$currency?apikey=EBB9D492-0ADC-416E-8985-CD041009F34D';
    networking = Networking(url: url);
    var data = await networking.getDataFromUrl();
    var jsonData = jsonDecode(data);
    return jsonData['rate'];
  }
}
