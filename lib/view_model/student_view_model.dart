import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_starter/model/student.dart';
import 'package:hive_starter/state/student_state.dart';

class StudentViewModel extends StateNotifier<StudentState> {
  StudentViewModel() : super(StudentState.inital());

  void addStudent(Student student) {} 
}
