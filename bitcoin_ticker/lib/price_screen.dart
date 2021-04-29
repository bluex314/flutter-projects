import 'package:flutter/material.dart';
import 'coin_data.dart';
import 'exchange_engine.dart';
import 'exchange_model.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  ExchangeEngine exchangeEngine;
  List<ExchangeModel> exchangeRates;
  String selectedValue;

  List<DropdownMenuItem<String>> getDropDownListOfCurrency() {
    return currenciesList
        .map(
          (currency) => DropdownMenuItem(
            child: Text(currency),
            value: currency,
          ),
        )
        .toList();
  }

  void updateState(String value) async {
    exchangeEngine = ExchangeEngine(countryCode: value);
    var _exchangeRates = await exchangeEngine.getExchangeRates();
    exchangeRates = _exchangeRates;
    setState(() {
      selectedValue = value;
    });
  }

  List<Widget> getWidgets() {
    List<Widget> widgets = [];
    if (exchangeRates == null) {
      return widgets;
    }
    for (ExchangeModel exchangeModel in exchangeRates) {
      widgets.add(Padding(
        padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
        child: Card(
          color: Colors.lightBlueAccent,
          elevation: 5.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
            child: Text(
              '1 ${exchangeModel.coinType} = ${exchangeModel.value} $selectedValue',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ));
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Column(
            children: getWidgets(),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: DropdownButton<String>(
              value: selectedValue,
              items: getDropDownListOfCurrency(),
              onChanged: (value) async => await updateState(value),
            ),
          ),
        ],
      ),
    );
  }
}
