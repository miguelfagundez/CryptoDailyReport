import 'package:flutter/material.dart';
import 'package:flutter_crypto_daily_reporter/services/services.dart';

//************************************************************
// BottomNavegationBar class
// Author: Miguel Fagundez
// Date: May, 12 2022
// This class will manage Bottom Navigation Bar Behavior
//************************************************************

class BottomNavegationBar extends StatelessWidget {
  const BottomNavegationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    final currentIndex = uiProvider.selectedMenu;

    return BottomNavigationBar(
      elevation: 1.0,
      backgroundColor: const Color.fromRGBO(240, 240, 240, 1.0),
      onTap: (index) => uiProvider.selectedOption = index,
      currentIndex: currentIndex,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.newspaper), label: 'News'),
        BottomNavigationBarItem(icon: Icon(Icons.auto_graph), label: 'Market'),
        BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'Portfolio'),
      ],
    );
  }
}
