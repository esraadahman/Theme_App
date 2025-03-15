import 'package:flutter/material.dart';
// this is that has switch to control the theme from device control
class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  // ✅ Moved outside build() to retain state
  bool isChecked = false; // Initial state
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Demo'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Flutter Demo Home Page'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(
                value: isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    isChecked = value ?? false;
                  });
                },
              ),
              const Text("Accept Terms & Conditions"),
            ],
          ),
          Chip(
            label: const Text('Flutter'),
            onDeleted: () {}, // ✅ Added onDeleted
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Elevated Button'),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Enter your name',
                hintText: 'John Doe',
                prefixIcon: Icon(Icons.person),
                suffixIcon: Icon(Icons.check),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
