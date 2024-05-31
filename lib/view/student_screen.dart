import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StudentView extends ConsumerStatefulWidget {
  const StudentView({super.key});

  @override
  ConsumerState<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends ConsumerState<StudentView> {
  final _gap = const SizedBox(
    height: 8,
  );
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Student View",
          style: TextStyle(fontSize: 50),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextFormField(
              controller: _fnameController,
              decoration: const InputDecoration(
                  hintText: "Enter Your fname", border: OutlineInputBorder()),
            ),
            _gap,
            TextFormField(
              controller: _lnameController,
              decoration: const InputDecoration(
                  hintText: "Enter Your lname", border: OutlineInputBorder()),
            ),
            _gap,
            ElevatedButton(onPressed: () {}, child: const Text("Add Student"))
          ],
        ),
      ),
    );
  }
}
