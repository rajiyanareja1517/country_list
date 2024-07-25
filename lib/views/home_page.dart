
import 'package:country_list/network/api_helper.dart';
import 'package:country_list/utils/constants.dart';
import 'package:flutter/material.dart';

import '../model/country_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Countries"),
      ),
      body: Container(
        child: FutureBuilder(
          future: ApiHelper.apiHelper.fetchAllCountry(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              List<CountryModel>? data = snapshot.data;
              print(data![0].common);
              return Expanded(
                child: ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (context, index) {
                   return InkWell(
                     onTap: () {
                       Constants.currentClickModel=data[index];
                       Navigator.pushNamed(context, 'country_details');
                     },
                     child: Container(
                       padding: EdgeInsets.all(10) ,
                         child: Text("${data![index].common}",style:  TextStyle(fontSize: 18),),),
                   );
                  },
                ),
              );
            } else {
              return Center(child: CircularProgressIndicator());
            }

          },
        ),
      ),
    );
  }
}
