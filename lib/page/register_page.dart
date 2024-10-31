import 'package:flutter/material.dart';
import 'package:mobile_tugas_akhir/config/color_config.dart';
import 'package:mobile_tugas_akhir/page/login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 100),
          children: [
            const Text(
              'Buat Akun Anda',
              style: TextStyle(
                color: ColorConfig.primaryColor,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text('Silahkan masukkan email dan password'),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                  hintText: 'Masukkan Username',
                  labelStyle: const TextStyle(
                    color: ColorConfig.primaryColor,
                  ),
                  labelText: 'Username',
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
              decoration: InputDecoration(
                  hintText: 'Masukkan Email',
                  labelStyle: const TextStyle(
                    color: ColorConfig.primaryColor,
                  ),
                  labelText: 'Email',
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
                  labelText: 'Password',
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
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  backgroundColor: ColorConfig.primaryColor,
                  minimumSize: const Size(double.infinity, 64)),
              child: const Text(
                'Daftar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Sudah punya akun?'),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const LoginPage();
                    }));
                  },
                  child: const Text(
                    'Masuk',
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
