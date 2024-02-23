import 'package:expence_tracker/widgets/expensen_lists/expenses_items.dart';
import 'package:flutter/material.dart';
import 'package:expence_tracker/models/expence.dart';

class Expenses_list extends StatelessWidget {
  const Expenses_list({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpenseItem(expenses[index]),
    );
  }
}
