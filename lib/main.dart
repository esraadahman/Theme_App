import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:themeing_app/deviceControl/home.dart';
import 'package:themeing_app/theme/themes.dart';
import 'package:themeing_app/userControl/homeScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('settings'); // Open a Hive box for storing settings
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // control by user
  ThemeMode _themeMode = ThemeMode.system; // Default to system theme

  void toggleTheme(bool isDark) {
    setState(() {
      _themeMode = isDark ? ThemeMode.dark : ThemeMode.light;
      // this line to store in hive changes by user
      settingsBox.put('themeMode', _themeMode.index); // Save user preference
    });
  }

  // this has prblem :-  the app will always reset to ThemeMode.system when restarted
  // changes by user will not be saved when the app is restarted
  // so we will use hive to store changes
  final Box settingsBox = Hive.box('settings'); // Hive box for storing theme

  @override
  void initState() {
    super.initState();
    _loadTheme(); // Load saved theme when app starts
  }

  void _loadTheme() {
    int themeIndex = settingsBox.get('themeMode',
        defaultValue: ThemeMode.system.index); // Default: system mode
    setState(() {
      _themeMode = ThemeMode.values[themeIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // i make it will check the system theme and set the theme accordingly

      // it has also light and dark options ThemeMode.light , ThemeMode.dark
      // control by device
      // themeMode: ThemeMode.system,
      // control by user
     themeMode: _themeMode,

      // ** the defult for dark  **
      darkTheme: Themes.darkTheme,
      // ** the defult for light  **
      theme: Themes.lightTheme,
      home:
          // this is that has switch to control the theme from device control
              const Test()

          // this is that has switch to control the theme from user
      //     MyHomeScreen(
      //   themeMode: _themeMode,
      //   onThemeChanged: toggleTheme,
      // ),
    );
  }
}
