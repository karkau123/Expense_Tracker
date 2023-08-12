import 'package:uuid/uuid.dart';
import 'package:flutter/material.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

const CategoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel:Icons.flight,
  Category.leisure:Icons.movie,
  Category.work: Icons.work,
  };

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid
            .v4(); // this creates a unique id and assigns it to the id property

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  // add flutter pub  add uuid to generate unique id of your expenses
  final Category
      category; // Category is of type enum which aloows only predefied options
}
