import 'package:flutter/material.dart';
import 'package:flutter_loading_appbar/flutter_loading_appbar.dart';
import 'package:flutter/material.dart';

class ExampleTwo extends StatelessWidget {
  const ExampleTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoadingAppBar(isLoading: true, linearProgressIndicator:const LinearProgressIndicator(
        color: Colors.black,
        minHeight: 10,
      ),
      backgroundColor: Colors.white,
      foregroundColor: Colors.black,
      title: const Text("EXample Two",)
      ),
    );
  }
}