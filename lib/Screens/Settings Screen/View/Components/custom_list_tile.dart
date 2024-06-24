import 'package:flutter/material.dart';

Padding settingListTile(
    double height,
    Widget? trailing,
    IconData i1,
    String t1,
    ) {
  return Padding(
    padding: EdgeInsets.only(top: height / 80),
    child: Card(
      child: ListTile(
        leading: Icon(i1),
        title: Text(t1),
        trailing: trailing,
      ),
    ),
  );
}