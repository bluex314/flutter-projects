import 'package:bitcoin_ticker/exchange_model.dart';

import 'coin_data.dart';
import 'gatherLiveExchangeRate.dart';

class ExchangeEngine {
  ExchangeEngine({this.countryCode});
  String countryCode;
  ExchangeRate exchangeRate;

  // list for holding values for exchange
  List<ExchangeModel> exchangeValues = [];

  Future getExchangeRates() async {
    exchangeRate = ExchangeRate(currency: countryCode);
    for (String coinType in cryptoList) {
      double rateData = await exchangeRate.getExchangeRate(coinType);
      String rateDataRounded = rateData.round().toString();
      exchangeValues.add(
        ExchangeModel(coinType: coinType, value: rateDataRounded),
      );
    }
    return exchangeValues;
  }
}
