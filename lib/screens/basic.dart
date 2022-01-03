import 'package:flutter/material.dart';
import "../menu.dart";

abstract class BasicScreen extends StatelessWidget {
  const BasicScreen({Key? key, required this.menuItem}) : super(key: key);
  final int menuItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Row(
        children: [
          Image.asset("assets/logo.png", height: 42, width: 42),
          Text('MTL Liquid Signer',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ],
      )),
      body: Row(
        children: [
          AppMenu(selected: menuItem),
          buildBody(context),
        ],
      ),
    );
  }

  Widget buildBody(BuildContext context);
}
