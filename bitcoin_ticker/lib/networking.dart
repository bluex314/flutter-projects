import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class Networking {
  String url;
  Networking({@required this.url});

  Future getDataFromUrl() async {
    var response = await http.get(Uri.parse(url));
    return response.body;
  }
}
