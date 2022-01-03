import 'package:flutter/material.dart';
import "basic.dart";

class ConstructScreen extends BasicScreen {
  const ConstructScreen({
    Key? key,
  }) : super(key: key, menuItem: 2);

  @override
  Widget buildBody(BuildContext context) {
    return const Center(
      child: Text("Construct body"),
    );
  }
}
