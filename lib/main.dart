import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/home_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.white, fontSize: 25),
          bodyMedium: TextStyle(color: Colors.grey),
        ),
        appBarTheme: const AppBarTheme(
          color: Color.fromRGBO(229, 229, 229, 1),
        ),
        scaffoldBackgroundColor: const Color.fromRGBO(229, 229, 229, 1),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
