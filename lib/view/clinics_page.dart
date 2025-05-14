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
      ),
      body: ListView.builder(
        itemCount: clinics.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.all(12),
            child: ListTile(
              title: Text(clinics[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
              },
            ),
          );
        },
      ),
    );
  }
}
