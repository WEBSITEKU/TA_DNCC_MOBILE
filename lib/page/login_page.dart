import 'package:flutter/material.dart';
import 'package:mobile_tugas_akhir/config/color_config.dart';
import 'package:mobile_tugas_akhir/page/main_page.dart';
import 'package:mobile_tugas_akhir/page/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 150),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Selamat Datang',
              style: TextStyle(
                color: ColorConfig.primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Silahkan login dan kata sandi anda'),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Masukkan Email atau Username',
                  labelStyle: const TextStyle(
                    color: ColorConfig.primaryColor,
                  ),
                  labelText: 'Email atau Username',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ColorConfig.primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Masukkan Password',
                  labelStyle: const TextStyle(
                    color: ColorConfig.primaryColor,
                  ),
                  labelText: 'Kata Sandi',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: ColorConfig.primaryColor,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(12),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => const MainPage()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConfig.primaryColor,
                  minimumSize: const Size(double.infinity, 64)),
              child: const Text(
                'Masuk',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Belum punya akun?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterPage(),
                      ),
                    );
                  },
                  child: const Text(
                    'Daftar',
                    style: TextStyle(
                      color: ColorConfig.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
