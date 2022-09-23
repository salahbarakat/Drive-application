import 'package:flutter/material.dart';
ListTile buildListTile(String text) {
  return ListTile(
    title:Text(text),
    trailing: Icon(Icons.arrow_forward_ios),
  );
}