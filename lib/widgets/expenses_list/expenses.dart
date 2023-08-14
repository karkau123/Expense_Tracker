import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/widgets/expenses_list/new_expense.dart';
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
    Expense(
        title: 'Flutter Course',
        amount: 499,
        date: DateTime.now(),
        category: Category.work),
    Expense(
      title: 'Cinema',
      amount: 1000,
      date: DateTime.now(),
      category: Category.leisure,
    )
  ];
  void _openAddExpenseOverlay() {
    showModalBottomSheet(
          
        context: context, builder: (ctx) => const  NewExpense(),

        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Expense Tracker',
        ),
        actions: [
          IconButton(
            onPressed: (_openAddExpenseOverlay),
            icon: Icon(Icons.add),
          ),
        ],
      ),
      body: Column(
        // toolbaar

        children: [
          const Text('The Chart'),
          Expanded(child: ExpensesList(expenses: _registerdExpenses)),
        ],
      ),
    );
  }
}
