import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkingHelper {
  final String url;

  NetworkingHelper({this.url});

  Future getDataFromUrl() async {
    try {
      http.Response response = await http.get(Uri.parse(url));
      response.body;
      var jsonData = jsonDecode(response.body);
      return jsonData;
    } catch (e) {
      print('Exception while requesting for data');
    }
  }
}
