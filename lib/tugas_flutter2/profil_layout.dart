import 'package:flutter/material.dart';

class ProfilLayout extends StatelessWidget {
  const ProfilLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF155E63),
        title: Text(
          "Profil Saya",
          style: const TextStyle(
            fontSize: 21,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        leading: const Icon(Icons.person),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFF3F7F6),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: double.infinity,
                color: const Color(0xFFE2F0EF),
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: Center(
                  child: Text(
                    "Profil Saya",
                    style: const TextStyle(
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Roboto',
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: const Color(0xFFD5E9E6),
                padding: const EdgeInsets.symmetric(vertical: 14),
                child: Row(
                  children: [
                    const Icon(Icons.verified_user),
                    SizedBox(width: 12,),
                    Text("Verified Success")
                  ],
                ),
                
              ),
              Container(
                width: double.infinity,
                color: Colors.white,
                padding: const EdgeInsets.symmetric(vertical: 12),
                child: const Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.person_2),
                      SizedBox(width: 8),
                      Text(
                        "Muhammad Faiz Aldo Firmansyah",
                        style: TextStyle(
                          color: Color(0xFF155E63),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                color: const Color(0xFFF8FBFA),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 8,
                ),
                child: const Row(
                  children: [
                    Icon(Icons.email, color: Color(0xFF155E63)),
                    SizedBox(width: 11),
                    Flexible(
                      child: Text(
                        "Email: muhammadfaizaldo@gmail.com",
                        style: TextStyle(color: Color(0xFF234044)),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Container(
                width: double.infinity,
                color: const Color(0xFFEAF4F2),
                padding: const EdgeInsets.symmetric(
                  vertical: 12,
                  horizontal: 8,
                ),
                child: const Row(
                  children: [
                    Icon(Icons.phone),
                    Flexible(child: Text("Hubungi Saya: 081381144285")),
                    Spacer(),
                    Icon(Icons.location_city),
                    Flexible(child: Text("Lokasi: Jakarta")),
                  ],
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 120,
                      color: Colors.white,
                      padding: const EdgeInsets.all(8.0),
                      child: const Column(
                        children: [
                          Icon(Icons.info),
                          Text(
                            "Informasi: Komunitas adalah langkah awal kolaborasi anda.",
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 120,
                      color: const Color(0xFFEAF4F2),
                      padding: const EdgeInsets.all(8.0),
                      child: const Column(
                        children: [
                          Icon(Icons.business),
                          Text("Ceo / Owner Development Learning Indonesia"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: double.infinity,
                color: const Color(0xFFE1EFED),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 14,
                    horizontal: 8,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.description_rounded),
                      const SizedBox(width: 8),
                      const Flexible(
                        child: Text(
                          "Deskripsi: Saya adalah Owner dan Web Developer yang memiliki minat dalam pengembangan aplikasi digital. Saya juga sedang mengembangkan kemampuan sebagai Junior Android Developer, serta senang mempelajari teknologi baru, membuat solusi yang bermanfaat, dan bekerja sama dalam membangun proyek yang berkualitas.",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 120,
                height: 120,
                child: Container(
                  color: Colors.white,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/images/profile.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
