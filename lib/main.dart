import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_api_handling/fruit.dart';
import 'package:flutter_api_handling/fruit_list.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<List<Fruit>> products;
  MyApp({this.products});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter API Handling',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Future<List<Fruit>> products;
  _HomeState({this.products});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetching Data'),
        centerTitle: true,
      ),
      body: Center(
        child: FutureBuilder(
          future: products,
          builder: (context, snapshot) {
            if (snapshot.hasError) print(snapshot.error);
            return snapshot.hasData
                ? FruitList(
                    fruitItems: snapshot.data,
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  );
          },
        ),
      ),
    );
  }
}
