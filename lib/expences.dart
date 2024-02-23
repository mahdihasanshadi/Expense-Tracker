import 'package:expence_tracker/widgets/expensen_lists/expences_list.dart';
import 'package:expence_tracker/models/expence.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        tittle: "Flutter Course",
        amount: 1500,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        tittle: "Cinema",
        amount: 450,
        date: DateTime.now(),
        category: Category.leisure),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Upper bar'),
          const Text('The Chart'),
          const Text('Expences List'),
          Expanded(
            child: Expenses_list(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
