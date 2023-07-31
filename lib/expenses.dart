import 'package:expense_tracker/expenses_list.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/models/expense.dart';

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
  final List<Expense> _registerdExpenses = [
    Expense(title:'Flutter Course' ,
     amount: 499 ,
      date: DateTime.now(),
      category: Category.work
      ),

      Expense(title:'Cinema' ,
     amount: 1000 ,
      date: DateTime.now(),
      category: Category.leisure,
      )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children:  [ const Text('The Chart'), 
        ExpensesList(expenses: _registerdExpenses)
          
        ],
      ),
    );
  }
}
