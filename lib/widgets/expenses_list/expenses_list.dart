import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses,required this.onRemoveExpense});
 
  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, index) => Dismissible(
        key: ValueKey(expenses[index]),
        background: Container(color: Color.fromARGB(91, 53, 59, 223),
        margin:EdgeInsets.symmetric(horizontal: Theme.of(context).cardTheme.margin!.horizontal),
        
        ),
        onDismissed: (direction) => {
          onRemoveExpense(expenses[index])},
         child: ExpenseItem(
          expenses[index],
         )) ,
    );
  }
}
