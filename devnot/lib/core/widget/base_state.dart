import 'package:flutter/material.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> {
  double dynamicHeight(double number) {
    return MediaQuery.of(context).size.height * number;
  }

  double dynamicWidth(double number) {
    return MediaQuery.of(context).size.width * number;
  }
}
