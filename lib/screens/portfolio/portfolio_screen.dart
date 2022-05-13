import 'package:flutter/material.dart';

//************************************************************
// PortfolioScreen class
// Author: Miguel Fagundez
// Date: May, 12 2022
// This class will manage portfolio data
//************************************************************

// ignore_for_file: constant_identifier_names

class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar Portfolio'),
        elevation: 3.0,
        backgroundColor: Colors.indigo,
      ),
      body: const Center(
        child: Text('PortfolioScreen'),
      ),
    );
  }
}
