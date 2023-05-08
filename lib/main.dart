import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  List<int> numbers = [];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xfff4eddb),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Click Count ",
                style: TextStyle(fontSize: 30),
              ),
              for (var num in numbers) Text("$num"),
              IconButton(
                onPressed: () => setState(() {
                  numbers.add(numbers.length);
                }),
                icon: const Icon(Icons.add_box_rounded),
              )
            ],
          ),
        ),
      ),
    );
  }
}
