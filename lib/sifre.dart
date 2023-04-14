import 'package:flutter/material.dart';

class SifreOlusturma extends StatefulWidget {
  const SifreOlusturma({Key? key}) : super(key: key);

  @override
  State<SifreOlusturma> createState() => _SifreOlusturmaState();
}

class _SifreOlusturmaState extends State<SifreOlusturma> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Şifre Yenileme"),
        backgroundColor: const Color.fromARGB(255, 21, 4, 154),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
            child: Column(children: <Widget>[
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.mail),
              labelText: "Mail",
            ),
          ),
        ])),
      ),
    );
  }
}
