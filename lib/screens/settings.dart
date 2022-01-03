import 'package:flutter/material.dart';
import "basic.dart";

class SettingsScreen extends BasicScreen {
  const SettingsScreen({
    Key? key,
  }) : super(key: key, menuItem: 3);

  @override
  Widget buildBody(BuildContext context) {
    return const Center(
      child: Text("Settings body"),
    );
  }
}
