// ignore_for_file: unused_local_variable, prefer_typing_uninitialized_variables, unused_import, non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:tsc/kullaniciEkle.dart';
import 'package:tsc/main.dart';
import 'package:tsc/sifre.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  login() async {
    String userId = _emailController.text;
    String password = _passwordController.text;
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 171, 196, 196),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: height * .35,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/resimler/tsc_logo.PNG"),
                )),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          const Text(
                            "TSC Otomasyon",
                            style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 21, 4, 154)),
                          ),
                          customSizedBox(),
                          TextField(
                            controller: _emailController,
                            decoration: const InputDecoration(
                                prefixIcon: Icon(Icons.account_box),
                                labelText: "Kullanıcı Adı",
                                enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.grey)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.grey))),
                          ),
                          customSizedBox(),
                          TextFormField(
                            controller: _passwordController,
                            obscureText: true,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(Icons.password),
                              labelText: 'Şifre',
                            ),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Lütfen bir şifre girin';
                              }
                              return null;
                            },
                          ),
                          customSizedBox(),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const SifreOlusturma()),
                                );
                              },
                              child: const Text("Şifremi Unuttum"),
                            ),
                          ),
                          customSizedBox(),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => KullaniciEkle()),
                                );
                              },
                              child: const Text("Hesap Oluştur"),
                            ),
                          ),
                          customSizedBox(),
                          Center(
                            child: TextButton(
                              onPressed: () {
                                login();
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Iskele()),
                                );
                              },
                              child: Container(
                                height: 50,
                                width: 100,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 60),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: const Color(0xff31274F),
                                ),
                                child: const Center(
                                  child: Text(
                                    "Giriş",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          customSizedBox(),
                        ],
                      )))
            ],
          ),
        ));
  }

  Widget customSizedBox() => const SizedBox(
        height: 20,
      );
}
