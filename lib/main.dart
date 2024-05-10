import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:jokeapi/data_services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    DataServices().getJoke();
    return MaterialApp(
        home: FutureBuilder(
            future: DataServices().getJoke(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return CircularProgressIndicator(
                  color: Colors.blue,
                );
              }
              if (snapshot.hasData) {
                final joke = snapshot.data;
                final jasonDaa = joke!['joke'];
                return Column(
                  children: [Text("data")],
                );
              } else {
                return CircularProgressIndicator(
                  color: Colors.amber,
                );
              }
            }));
  }
}
