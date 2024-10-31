import 'package:flutter/material.dart';
import 'package:mobile_tugas_akhir/config/color_config.dart';
import 'package:mobile_tugas_akhir/page/login_page.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8.0),
          children: [
            Center(
              child: Text(
                'Profile',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            CircleAvatar(
              maxRadius: 70,
              backgroundImage: AssetImage('assets/6.jpeg'),
            ),
            SizedBox(
              height: 16,
            ),
            Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama lengkap : ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('David Naufal Zaki'),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Nim : ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('A11.2022.14444'),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Prodi : ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('Teknik Informatika'),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      'Divisi DNCC : ',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text('Mobile Development'),
                    SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: ColorConfig.primaryColor,
                    minimumSize: const Size(double.infinity, 50)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()));
                },
                child: Text(
                  'Keluar',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
