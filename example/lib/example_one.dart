import 'package:flutter/material.dart';
import 'package:flutter_loading_appbar/flutter_loading_appbar.dart';

class ExampleOne extends StatelessWidget {
  const ExampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoadingAppBar(isLoading: true, linearProgressIndicator: LinearProgressIndicator(
        backgroundColor: Colors.pinkAccent,
      )),
    );
  }
}