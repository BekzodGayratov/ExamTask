
import 'package:examtask/view/screens/current_screen.dart';
import 'package:flutter/material.dart';

class MyRouter extends Object {
  Route? onGenerate(RouteSettings settings) {
    var args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context)=> CurrentScreen());
    }
  }
}
