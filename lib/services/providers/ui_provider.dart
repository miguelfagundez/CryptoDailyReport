import 'package:flutter/material.dart';
export 'package:provider/provider.dart';

//************************************************************
// UiProvider class
// Author: Miguel Fagundez
// Date: May, 12 2022
// This class will manage UI flutter state - User changes
//************************************************************

// ignore_for_file: constant_identifier_names

class UiProvider extends ChangeNotifier {
  int _indexSelected = 0;

  int get selectedMenu {
    return _indexSelected;
  }

  set selectedOption(int newSelected) {
    _indexSelected = newSelected;
    notifyListeners();
  }
}
