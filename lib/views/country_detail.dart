import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CountryDetails extends StatefulWidget {
  const CountryDetails({super.key});

  @override
  State<CountryDetails> createState() => _CountryDetailsState();
}

class _CountryDetailsState extends State<CountryDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Country Details"),
      ),
      body: Container(
        alignment: Alignment.topCenter,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text("${Constants.currentClickModel!.common}",style: TextStyle(fontSize: 18),),
            Text("${Constants.currentClickModel!.official}",style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
    );
  }
}
