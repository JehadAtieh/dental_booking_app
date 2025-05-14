import 'package:flutter/material.dart';

class ClinicsPage extends StatelessWidget {
  const ClinicsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> clinics = [
      'عيادة الابتسامة',
      'مركز العناية بالأسنان',
      'عيادة الدكتور سامي',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('العيادات'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: const Color(0xFFF0F4F8),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: clinics.length,
          separatorBuilder: (context, index) => const SizedBox(height: 12),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 8,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: ListTile(
                contentPadding:
                const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                leading: const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.teal,
                  child: Icon(Icons.local_hospital, color: Colors.white),
                ),
                title: Text(
                  clinics[index],
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                subtitle: const Text('اضغط لمزيد من التفاصيل'),
                trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                onTap: () {
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
