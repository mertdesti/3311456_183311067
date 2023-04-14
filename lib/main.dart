// ignore: unused_import, depend_on_referenced_packages

// ignore: unused_import
import 'package:hive_flutter/hive_flutter.dart';
import 'package:flutter/material.dart';
import 'package:tsc/kayit.dart';
import 'package:tsc/login_page.dart';
import 'package:tsc/periyodik_kontrol.dart';

import 'olcumCihaz.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class Iskele extends StatefulWidget {
  const Iskele({Key? key}) : super(key: key);

  @override
  State<Iskele> createState() => _IskeleState();
}

class _IskeleState extends State<Iskele> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 252, 252),
      appBar: AppBar(
        title: const Text("TSC Otomasyon"),
        backgroundColor: const Color.fromARGB(255, 21, 4, 154),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/resimler/tsc_logo.PNG"),
                  ),
                  color: Color.fromARGB(255, 248, 248, 249)),
              child: Text(""),
            ),
            ListTile(
              title: const Text('Periyodik Kontrol'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PeriyodikKontrol()),
                );
              },
            ),
            ListTile(
              title: const Text('İş Yeri Kayıt'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const KayitSayfasi()),
                );
              },
            ),
            ListTile(
              title: const Text('Ölçüm Cihazı Bilgileri'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const olcumCihazi()),
                );
              },
            ),
            ListTile(
              title: const Text('Çıkış'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
