import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

//1. Provider ->provides state
// 2. conusmer->conusmes state

//Create immutables provider
//alternative

//Made 2 provider

final appbarProvider = Provider<String>((ref) {
  return "Counter app";
});

final counterProvider = StateProvider<int>((ref) {
  return 1;
});

// class CounterView extends StatelessWidget {
//stateless changed to consuemt widget
class CounterView extends ConsumerWidget {
  const CounterView({super.key});

  // Widget build(BuildContext context) {
  //build is changed and widget ref is added
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
          //builder use dynamic banauna lai use gare ko
          //underscore ma chai widget ref ra child hunxa
          //_ , __ ko chai value use na garna ko lagi use gari rako

          title: Text(ref.read(appbarProvider))
          // Consumer(
          //   builder: (_, ref, __) {
          //     String value = ref.read(appbarProvider);
          //     return Text(value);
          //   },
          // ),

          ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Consumer(
            //   builder: (_, ref, __) {
            //     String value = ref.read(counterProvider).toString();
            //     return Text(value);
            //   },
            // ),

            Text(ref.watch(counterProvider).toString()),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).state++;
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
