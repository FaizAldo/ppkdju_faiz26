import 'package:flutter/material.dart';

class TugasViewInput extends StatefulWidget {
  const TugasViewInput({super.key});

  @override
  State<TugasViewInput> createState() => _TugasViewInputState();
}

class _TugasViewInputState extends State<TugasViewInput> {
  final _namaController = TextEditingController();
  final _emailController = TextEditingController();
  final _nomorController = TextEditingController();
  final _alamatController = TextEditingController();

  String _nama = 'Belum ada data';
  String _email = 'Belum ada data';
  String _nomor = 'Belum ada data';
  String _alamat = 'Belum ada data';
  String _status = 'Belum dikirim';

  @override
  void dispose() {
    _namaController.dispose();
    _emailController.dispose();
    _nomorController.dispose();
    _alamatController.dispose();
    super.dispose();
  }

  void _kirimData() {
    setState(() {
      _nama = _namaController.text.trim().isEmpty
          ? 'Belum ada data'
          : _namaController.text.trim();
      _email = _emailController.text.trim().isEmpty
          ? 'Belum ada data'
          : _emailController.text.trim();
      _nomor = _nomorController.text.trim().isEmpty
          ? 'Belum ada data'
          : _nomorController.text.trim();
      _alamat = _alamatController.text.trim().isEmpty
          ? 'Belum ada data'
          : _alamatController.text.trim();
      _status = 'Sudah dikirim';
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Data berhasil dikirim')),
    );
  }

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
              controller: _namaController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
                labelText: "Nama Lengkap",
                hintText: "Masukkan nama",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 13),
            TextField(
              controller: _emailController,
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
              controller: _nomorController,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.phone_android),
                labelText: "Nomor Telepon",
                hintText: "Nomor Aktif",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 13),
            TextField(
              controller: _alamatController,
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
                    onPressed: _kirimData,
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
              children: [
                _DataCard(icon: Icons.person, label: 'Nama', value: _nama),
                _DataCard(icon: Icons.email, label: 'Email', value: _email),
                _DataCard(icon: Icons.phone, label: 'Nomor', value: _nomor),
                _DataCard(
                  icon: Icons.location_city,
                  label: 'Alamat',
                  value: _alamat,
                ),
                _DataCard(
                  icon: Icons.verified_user,
                  label: 'Status',
                  value: _status,
                ),
                const _DataCard(
                  icon: Icons.note,
                  label: 'Catatan',
                  value: 'Belum ada data',
                ),
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
  final String value;

  const _DataCard({
    required this.icon,
    required this.label,
    required this.value,
  });

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
            Text(value),
          ],
        ),
      ),
    );
  }
}
