import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget customDivider(double height, double width, BuildContext context) {
  return Container(
    height: height / 18,
    width: width/160,
    decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.secondary,
        borderRadius: BorderRadius.circular(10)),
  );
}