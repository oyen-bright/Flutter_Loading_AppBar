import 'package:flutter/material.dart';
import 'package:flutter_loading_appbar/flutter_loading_appbar.dart';

class ExampleThree extends StatelessWidget {
  const ExampleThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoadingAppBar(isLoading: true, linearProgressIndicator: null),
    );
  }
}