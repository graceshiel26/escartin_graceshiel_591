
// ===== FILE: lib/main.dart =====
import 'package:flutter/material.dart';
import 'package:modelhandling/screen/chat_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

 

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'https://ivqfnvaprilmxyvjkrdh.supabase.co',
    anonKey: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Iml2cWZudmFwcmlsbXh5dmprcmRoIiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzExNzc0NTEsImV4cCI6MjA4Njc1MzQ1MX0.vw0J9JML31wAw4w6h3k4tA0s-uf1sS0mw4z3ZYjgqIs'
    
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
      home: ChatPage(username: 'Graceshiel',),
    );
  }
}