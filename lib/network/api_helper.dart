import 'dart:convert';

import 'package:country_list/model/country_model.dart';
import 'package:http/http.dart' as http;

class ApiHelper {
  ApiHelper._();

  static ApiHelper apiHelper = ApiHelper._();

  Future<List<CountryModel>?> fetchAllCountry() async {
    http.Response response = await http.get(Uri.parse(
        "https://restcountries.com/v3.1/all?_gl=1*1vvs6k0*_ga*NjE5ODU3Mzk1LjE3MjE4ODU4NTA.*_ga_ZCYG64C7PL*MTcyMTg4NTg0OS4xLjEuMTcyMTg4NTg3OC4wLjAuMA.."));
    if (response.statusCode == 200) {
      late List<CountryModel> listCountry = [];
      List listMap = jsonDecode(response.body);
      for (int i = 0; i < 20; i++) {
        Map data = listMap[i]['name'];
        print("Map" + data.toString());
        listCountry.add(CountryModel.fromMap(data: data));
      }

      return listCountry;
    }
  }
}
