import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_starter/app/app.dart';

void main() {
  runApp(
    //Provider scope ma wrap garayena bhane chai text aaudaina
    const ProviderScope(child: App()),
  );
}
