import 'package:flutter/material.dart';

class TugasViewInput extends StatefulWidget {
  const TugasViewInput({super.key});

  @override
  State<TugasViewInput> createState() => _TugasViewInputState();
}

class _TugasViewInputState extends State<TugasViewInput> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("Form View")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Input Data",
                style: TextStyle(color: Colors.blueAccent, fontSize: 20),
              ),
            ),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Nama Lengkap",
                hintText: "Masukkan nama",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 13),
            TextField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: "Email",
                hintText: "Masukkan email",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 13),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone_android),
                labelText: "Nomor Telepon",
                hintText: "Nomor Aktif",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 13),
            TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_city_sharp),
                labelText: "Alamat Domisili",
                hintText: "Alamat Domisili",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),
            Builder(
              builder: (context) => SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: FilledButton.icon(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Data berhasil dikirim')),
                      );
                    },
                    icon: const Icon(Icons.send),
                    label: const Text('Kirim'),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              crossAxisSpacing: 1,
              mainAxisSpacing: 2,
              crossAxisCount: 2,
              children: const [
                _DataCard(icon: Icons.person, label: 'Nama'),
                _DataCard(icon: Icons.email, label: 'Email'),
                _DataCard(icon: Icons.phone, label: 'Nomor'),
                _DataCard(icon: Icons.location_city, label: 'Alamat'),
                _DataCard(icon: Icons.verified_user, label: 'Status'),
                _DataCard(icon: Icons.note, label: 'Catatan'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _DataCard extends StatelessWidget {
  final IconData icon;
  final String label;

  const _DataCard({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icon, color: Colors.blue),
            const SizedBox(height: 8),
            Text(label),
            const SizedBox(height: 4),
            const Text('Belum ada data'),
          ],
        ),
      ),
    );
  }
}
