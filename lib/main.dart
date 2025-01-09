import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'AuthPage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://mpklsvssywvvtrgmqfkq.supabase.co', // Replace with your Supabase URL
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1wa2xzdnNzeXd2dnRyZ21xZmtxIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzYyNTkxMzQsImV4cCI6MjA1MTgzNTEzNH0.fxKcgOtm2h-AgtgOIVzIZ6SvhKDChw1Ucou4SPyOqsM', // Replace with your anon key
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Supabase Auth',
      home: AuthPage(),
    );
  }
}
