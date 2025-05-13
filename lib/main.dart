import 'package:dental_booking_app/view/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // ✅ استدعاء التطبيق الصحيح
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dental Booking App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: LoginPage(), // ✅ صفحة تسجيل الدخول
    );
  }
}
