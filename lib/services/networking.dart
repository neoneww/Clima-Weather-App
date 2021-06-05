import 'package:http/http.dart' as http; //to make thing clear that the method like http are coming from the http package
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    String temp = response.body;
    var decodedData = jsonDecode(temp);
    return decodedData; //converting the string back into json then accessing it various value we are using var cause jsonDecode retutn  a var type thing
  }
}
