import 'package:flutter/material.dart';

class DoctorPage extends StatelessWidget {
  const DoctorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('صفحة الدكتور'),
        backgroundColor: Colors.teal,
      ),
      body: const Center(
        child: Text(
          'مرحباً بك دكتور 👨‍⚕️',
          style: TextStyle(fontSize: 24, color: Colors.teal),
        ),
      ),
    );
  }
}
