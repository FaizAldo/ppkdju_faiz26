import 'package:flutter/material.dart';

class TgsBtn extends StatefulWidget {
  const TgsBtn({super.key});

  @override
  State<TgsBtn> createState() => _TgsBtnState();
}

class _TgsBtnState extends State<TgsBtn> {
  bool _isFavorited = false;
  bool _isExpanded = false;
  bool _showElevatedText = false;
  int _gestureCount = 0;
  String _buttonMessage = 'Belum ada tombol yang ditekan';
  final String _longText =
      'TextButton adalah tombol sederhana pada Flutter yang digunakan untuk menjalankan suatu aksi ketika pengguna menekannya. '
      'Tombol ini biasanya digunakan untuk navigasi, membuka informasi tambahan, atau menjalankan perintah tertentu. '
      'Berbeda dengan ElevatedButton, TextButton tidak memiliki latar belakang sehingga tampilannya lebih ringan dan sederhana. '
      'Warna, ukuran teks, jarak, dan gaya tombol dapat diatur sesuai kebutuhan aplikasi.';

  void _toggleFavorite() {
    _clearButtonDetails();
    setState(() {
      _isFavorited = !_isFavorited;
      _buttonMessage = _isFavorited
          ? 'Tombol favorit aktif'
          : 'Tombol favorit dinonaktifkan';
    });
    print(_isFavorited ? 'Disukai' : 'Batal disukai');
  }

  void _showGestureMessage(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  void _clearButtonDetails() {
    setState(() {
      _isExpanded = false;
      _showElevatedText = false;
    });
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }

  void _decrementGestureCount() {
    if (_gestureCount == 0) return;
    setState(() {
      _gestureCount--;
      _buttonMessage = 'Angka gesture dikurangi menjadi $_gestureCount';
    });
    print('Jumlah gesture dikurangi menjadi $_gestureCount');
  }

  void _handleGesture(String gestureName) {
    setState(() {
      _gestureCount++;
      _buttonMessage = '$gestureName ke-$_gestureCount';
    });
    print('$gestureName: angka $_gestureCount');
    _showGestureMessage('$gestureName ke-$_gestureCount');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Button", style: TextStyle(fontStyle: FontStyle.italic)),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Elevated Button"),
            ),
            Text(
              _buttonMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  final showName = !_showElevatedText;
                  _clearButtonDetails();
                  setState(() {
                    _showElevatedText = showName;
                    _buttonMessage = 'ElevatedButton ditekan';
                  });
                  print('Tombol berhasil ditekan!');
                },
                child: Text("Klik Saya"),
              ),
            ),
            if (_showElevatedText)
              const Text(
                'Faiz',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            const SizedBox(height: 12),
            Text("Ikon Liked"),
            IconButton(
              onPressed: _toggleFavorite,
              icon: Icon(
                _isFavorited ? Icons.favorite : Icons.favorite_border,
                color: _isFavorited ? Colors.red : Colors.grey,
              ),
            ),
            const SizedBox(height: 12),
            Text('Text Button'),
            TextButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                  _buttonMessage = _isExpanded
                      ? 'Deskripsi TextButton ditampilkan'
                      : 'Deskripsi TextButton disembunyikan';
                });
              },

              style: TextButton.styleFrom(
                padding: EdgeInsets.zero,
                minimumSize: const Size(0, 0),
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),

              child: Text(
                _isExpanded ? 'Sembunyikan' : 'Lihat Selengkapnya',
                style: const TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            if (_isExpanded) Text(_longText, textAlign: TextAlign.center),
            const SizedBox(height: 12),
            Text("InkWell Button"),
            InkWell(
              onTap: () {
                _clearButtonDetails();
                setState(() {
                  _buttonMessage = 'InkWell ditekan';
                });
                print('Pesan rahasia: InkWell berhasil disentuh!');
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Container berhasil disentuh!')),
                );
              },
              borderRadius: BorderRadius.circular(8),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue.shade50,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.touch_app, color: Colors.blue),
                    SizedBox(width: 8),
                    Text('Klik area InkWell'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 12),
            const Text('GestureDetector: Tap'),
            Text('Jumlah gesture: $_gestureCount'),
            GestureDetector(
              onTap: () {
                _clearButtonDetails();
                _handleGesture('Tap terdeteksi');
              },
              child: _gestureBox('Ketuk sekali'),
            ),
            const SizedBox(height: 12),
            const Text('GestureDetector: Double Tap'),
            GestureDetector(
              onDoubleTap: () {
                _clearButtonDetails();
                _handleGesture('Double tap terdeteksi');
              },
              child: _gestureBox('Ketuk dua kali'),
            ),
            const SizedBox(height: 12),
            const Text('GestureDetector: Long Press'),
            GestureDetector(
              onLongPress: () {
                _clearButtonDetails();
                _handleGesture('Long press terdeteksi');
              },
              child: _gestureBox('Tekan lama'),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _decrementGestureCount,
        tooltip: 'Kurangi angka gesture',
        child: const Icon(Icons.remove),
      ),
    );
  }

  Widget _gestureBox(String label) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade50,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(label, textAlign: TextAlign.center),
    );
  }
}
