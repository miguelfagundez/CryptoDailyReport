import 'package:flutter/material.dart';

class RouteModel {
  final String name;
  final String route;
  final Widget screen;
  final IconData icon;

  RouteModel(
      {required this.name,
      required this.route,
      required this.screen,
      required this.icon});
}
