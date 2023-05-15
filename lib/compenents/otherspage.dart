import 'package:coffe_shop/model/coffee.dart';
import 'package:flutter/material.dart';
import 'menuItem.dart';
class OrthersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: menu.length,
        itemBuilder: (context, int key) {
          return MenuItem(index: key);
        },
      ),
    );
  }
}