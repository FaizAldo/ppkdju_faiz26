import 'package:flutter/material.dart';

class TugasListview extends StatelessWidget {
  const TugasListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Koperasi", style: TextStyle(color: Colors.white)),
      ),
      body: ListView(
        children: [
          Padding(padding: const EdgeInsets.all(8.0), child: Text("Data Anda")),
          SizedBox(height: 14),
          TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
              label: Text("Nama Lengkap"),
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
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.person)),
            title: const Text('Anggota Koperasi'),
            subtitle: const Text('Daftar anggota koperasi'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.inventory_2)),
            title: const Text('Data Barang'),
            subtitle: const Text('Lihat barang yang tersedia'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.shopping_cart)),
            title: const Text('Transaksi'),
            subtitle: const Text('Kelola transaksi koperasi'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.account_balance_wallet),
            ),
            title: const Text('Simpanan'),
            subtitle: const Text('Informasi simpanan anggota'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: const CircleAvatar(child: Icon(Icons.receipt_long)),
            title: const Text('Laporan'),
            subtitle: const Text('Lihat laporan koperasi'),
            trailing: const Icon(Icons.chevron_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
