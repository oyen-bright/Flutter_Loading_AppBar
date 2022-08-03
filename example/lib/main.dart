import 'package:example/example_one.dart';
import 'package:example/example_three.dart';
import 'package:example/example_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_loading_appbar/flutter_loading_appbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LoadingAppBar(
          isLoading: true,
          title: Text("Loading AppBar"),
          backgroundColor: Colors.black,
        
          linearProgressIndicator: const LinearProgressIndicator(
            backgroundColor: Colors.white,
            color: Colors.green,
            minHeight: 10,
          ),
          elevation: 0),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ExampleOne()));
                },
                child: const Text("Example One")),
                 ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ExampleTwo()));
                },
                child: const Text("Example Two")),
                 ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const ExampleThree()));
                },
                child: const Text("Example Three"))
          ],
        ),
      ),
    );
  }
}
