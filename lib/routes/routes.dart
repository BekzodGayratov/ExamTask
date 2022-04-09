import 'dart:js';

import 'package:examtask/view/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyRouter extends Object {
  Route? onGenerate(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context)=> HomeScreen());
    }
  }
}
