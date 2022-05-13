import 'package:flutter/material.dart';

//************************************************************
// MarketScreen class
// Author: Miguel Fagundez
// Date: May, 12 2022
// This class will manage home market cap data
//************************************************************

// ignore_for_file: constant_identifier_names

class MarketScreen extends StatelessWidget {
  const MarketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Market'),
        elevation: 3.0,
        backgroundColor: Colors.indigo,
      ),
      body: const Center(
        child: Text('MarketScreen'),
      ),
    );
  }
}
