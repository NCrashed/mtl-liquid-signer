import 'package:flutter/material.dart';
import "basic.dart";

class SigningScreen extends BasicScreen {
  const SigningScreen({
    Key? key,
  }) : super(key: key, menuItem: 1);

  @override
  Widget buildBody(BuildContext context) {
    return const Center(
      child: Text("Signing body"),
    );
  }
}
