class CountryModel {
   String common="";
   String official="";

  CountryModel({required this.common, required this.official});

  factory CountryModel.fromMap({required Map data}) {
    return CountryModel(
        common: data['common'].toString(), official: data['official'].toString());
  }
}
