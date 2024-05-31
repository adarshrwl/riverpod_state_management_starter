import 'package:flutter/material.dart';
import 'package:hive_starter/view/arithmetic_view.dart';
import 'package:hive_starter/view/counter_view.dart';
import 'package:hive_starter/view/simple_interest_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 2,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const CounterView();
                  }),
                );
              },
              child: const Card(
                shadowColor: Colors.black,
                child: Center(
                  child: Text(
                    'Counter',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const ArithmeticView();
                  }),
                );
              },
              child: const Card(
                shadowColor: Colors.black,
                child: Center(
                  child: Text(
                    'Arithmetic',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const SimpleInterestView();
                  }),
                );
              },
              child: const Card(
                shadowColor: Colors.black,
                child: Center(
                  child: Text(
                    'Simple Interest',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
