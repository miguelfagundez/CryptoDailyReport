import 'package:flutter/material.dart';

import 'package:flutter_crypto_daily_reporter/screens/screens.dart';
import 'package:flutter_crypto_daily_reporter/services/services.dart';
import 'package:flutter_crypto_daily_reporter/widgets/widgets.dart';

//************************************************************
// HomeScreen class
// Author: Miguel Fagundez
// Date: May, 12 2022
// This class will show main screens & Bottom Nav Menu
//************************************************************

const news = NewsScreen();
const market = MarketScreen();
const portfolio = PortfolioScreen();

final screens = [news, market, portfolio];

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UiProvider>(context);
    _currentIndex = uiProvider.selectedMenu;
    return Scaffold(
      body: IndexedStack(
        children: screens,
        index: _currentIndex,
      ),
      bottomNavigationBar: const BottomNavegationBar(),
    );
  }
}
