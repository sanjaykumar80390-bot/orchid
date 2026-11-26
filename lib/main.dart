import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  
  // Set preferred orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  
  runApp(const OrchidApp());
}

class OrchidApp extends StatelessWidget {
  const OrchidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Orchid 🌸',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: const Color(0xFFB19CD9),
        scaffoldBackgroundColor: const Color(0xFF0A0A14),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
