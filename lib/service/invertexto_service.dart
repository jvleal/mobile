import 'dart:convert';
import 'package:http/http.dart' as http;

final String _token ="15479|gZrgpEpsCxfhmjQc8ocbiyRj5uZuJxuL";

Future<Map> converteNumeroPorExtenso(String? _valor) async{
  http.Response response;
  response = await http.get(Uri.parse("https://api.invertexto.com/v1/number-to-words?token=$_token&number=$_valor&language=pt&currency=BRL"));
  return json.decode(response.body);
}

Future<Map> buscaCEP(String? _valor) async{
  http.Response response;
  response = await http.get(Uri.parse("https://api.invertexto.com/v1/cep/$_valor?token=$_token"));
  return json.decode(response.body);
}

Future<Map> ConverteMoedas(String? _valor) async{
  http.Response response;
  response = await http.get(Uri.parse("https://api.invertexto.com/v1/currency/$_valor?token=$_token"));
  return json.decode(response.body);
}