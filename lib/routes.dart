import 'package:flutter/material.dart';
import 'package:flutter_app3/about.dart';
import 'package:flutter_app3/pages/home.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (_) => Home(),
  About.routeName: (_) => About(),
};