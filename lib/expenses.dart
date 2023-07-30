import 'package:flutter/material.dart';

// this first class is our widget class
class Expenses extends StatefulWidget {
// Add our constructor
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

// this second class is our state class
class _ExpensesState extends State<Expenses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('The Chart'),
          Text('Expenses list.....')
        ],
      ),
    );
  }
}
