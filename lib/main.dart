import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: const Text('My Appbar!'),
      centerTitle: true,
    ),
    body: const Center(
      child: Text("Application Body!"),
    ),
    floatingActionButton: const FloatingActionButton(
      onPressed: null,
      child: Text('Click'),
    ),
  )
));