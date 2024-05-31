import 'package:flutter/foundation.dart';
import 'package:hive_starter/model/student.dart';

class StudentState {
  final List<Student> lstStudents;
  final bool isLoading;

//Main constructor
  StudentState({
    required this.lstStudents,
    required this.isLoading,
  });

  //const
  factory StudentState.inital() {
    return StudentState(lstStudents: [], isLoading: false);
  }

//copy with function
  StudentState copyWith({
    Student? students,
    bool? isLoading,
  }) {
    return StudentState(
        lstStudents:
            students != null ? [...lstStudents, students] : lstStudents,
        isLoading: isLoading ?? this.isLoading);
  }
}
