import 'package:flutter/material.dart';
import "basic.dart";

class AssetsScreen extends BasicScreen {
  const AssetsScreen({
    Key? key,
  }) : super(key: key, menuItem: 0);

  @override
  Widget buildBody(BuildContext context) {
    return const Center(
      child: Text("Assets body"),
    );
  }
}
