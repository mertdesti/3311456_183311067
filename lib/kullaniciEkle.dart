// ignore_for_file: file_names, duplicate_ignore, unused_local_variable
// ignore: unused_import
import 'package:flutter/material.dart';
// ignore: unused_import

// ignore: unused_import

//import 'package:tsc/DatabaseHandler/DbHelper.dart';
//import 'package:tsc/UserModel.dart';
// ignore: unused_import
import 'package:tsc/login_page.dart';

// ignore: use_key_in_widget_constructors
class KullaniciEkle extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _KullaniciEkleState createState() => _KullaniciEkleState();
}

class _KullaniciEkleState extends State<KullaniciEkle> {
  late String email, sifre;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  // var dbHelper = DbHelper();
  // @override
  // void initState() {
  //   super.initState();
  //   dbHelper = DbHelper();
  // }

  // // ignore: non_constant_identifier_names
  // signUp() async {
  //   // ignore: avoid_print
  //   //final form = _formKey.currentState;
  //   String kullanici = _emailController.text;
  //   String password = _passwordController.text;

  //   _formKey.currentState!.save();

  //   UserModel uModel = UserModel(kullanici, password);

  //   await dbHelper.saveData(uModel).then((userData) {
  //     const AlertDialog(semanticLabel: "Kaydoldunuz..");
  //   }).catchError((error) {
  //     // ignore: avoid_print
  //     print(error);
  //     const AlertDialog(semanticLabel: "Kaydolamadınız..");
  //   });
  // }
 

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kullanıcı Ekle'),
        backgroundColor: const Color.fromARGB(255, 21, 4, 154),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              TextFormField(
                onChanged: (alinanMail) {
                  setState(() {
                    email = alinanMail;
                  });
                },
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'E-posta',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen bir e-posta girin';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                onChanged: (alinanSifre) {
                  setState(() {
                    sifre = alinanSifre;
                  });
                },
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Şifre',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen bir şifre girin';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 32.0),
              ElevatedButton(
                child: const Text('Kullanıcı Ekle'),
                onPressed: () {
                  //signUp();
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Kullanıcı başarıyla eklendi.'),
                      ),
                    );
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const LoginPage()));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
