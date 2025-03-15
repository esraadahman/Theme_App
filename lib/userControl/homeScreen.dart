import 'package:flutter/material.dart';

class MyHomeScreen extends StatefulWidget {
  final ThemeMode themeMode;
  final Function(bool) onThemeChanged;

  const MyHomeScreen(
      {Key? key, required this.themeMode, required this.onThemeChanged})
      : super(key: key);

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  bool isChecked() {
    return widget.themeMode == ThemeMode.dark;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme App"),
        actions: [
          Switch(
              value: isChecked(),
              onChanged: (newValue) {
                widget
                    .onThemeChanged(newValue); // Calls toggleTheme() from MyApp
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/profile_pic.png", width: 200, height: 200),
                const SizedBox(height: 10),
                Text(
                  "Your Name",
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: 10),
                Text(
                  "@yourusername",
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
                const SizedBox(height: 10),
                Text(
                  "This is a simple Status",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(height: 20),
                const TextField(),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: Text(
                    "Just Click",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  onPressed: () {},
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  child: Text(
                    "Click Me",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
