import 'package:flutter/material.dart';

//************************************************************
// NewsScreen class
// Author: Miguel Fagundez
// Date: May, 12 2022
// This class will manage news home data
//************************************************************

// ignore_for_file: constant_identifier_names

class NewsScreen extends StatefulWidget {
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  var countVar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar News'),
        elevation: 3.0,
        backgroundColor: Colors.indigo,
      ),
      body: Center(
        child: Text('NewsScreen + $countVar'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            countVar += 1;
          });
        },
      ),
    );
  }
}
