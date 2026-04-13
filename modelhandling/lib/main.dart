
// ===== FILE: lib/main.dart =====
import 'package:flutter/material.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

 

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://nyoniznvreaqxquitovn.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im55b25pem52cmVhcXhxdWl0b3ZuIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzQ4MTA2MzksImV4cCI6MjA5MDM4NjYzOX0.wluclOAN69JbeUBdjOniajniE-LqI05pakpNawqvmAY'
    
  );

  runApp(const MyApp());

}

 

class MyApp extends StatelessWidget {

  const MyApp({super.key});

 

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Student Info Manager',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}