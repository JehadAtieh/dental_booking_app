import 'package:flutter/material.dart';

import 'SignUpPage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String userType = 'مريض'; // مريض أو دكتور

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEAF6F6), // خلفية هادئة
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.medical_services, size: 80, color: Colors.teal),
              const SizedBox(height: 16),
              const Text(
                'تسجيل الدخول',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.teal),
              ),
              const SizedBox(height: 24),

              // نوع المستخدم
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('تسجيل الدخول كـ: ', style: TextStyle(fontSize: 16)),
                  DropdownButton<String>(
                    value: userType,
                    items: ['مريض', 'دكتور'].map((type) {
                      return DropdownMenuItem(value: type, child: Text(type));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        userType = value!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 16),

              // الإيميل
              TextField(
                decoration: InputDecoration(
                  labelText: 'البريد الإلكتروني',
                  prefixIcon: const Icon(Icons.email),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 16),

              // كلمة المرور
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'كلمة المرور',
                  prefixIcon: const Icon(Icons.lock),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
              const SizedBox(height: 24),

              // زر الدخول
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  ),
                  onPressed: () {
                    // معالجة الدخول
                  },
                  child: const Text('دخول', style: TextStyle(fontSize: 18)),
                ),
              ),

              const SizedBox(height: 12),

              // رابط إنشاء حساب
              TextButton(
                onPressed: () {
                  // داخل onPressed في TextButton لإنشاء حساب جديد
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  SignUpPage()),
                  );

                },
                child: const Text('ليس لديك حساب؟ أنشئ حساب الآن'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
