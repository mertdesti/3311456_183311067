import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class KayitSayfasi extends StatefulWidget {
  const KayitSayfasi({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _KayitSayfasiState createState() => _KayitSayfasiState();
}

class _KayitSayfasiState extends State<KayitSayfasi> {
  final _formKey = GlobalKey<FormState>();

  final _isyeriAdiController = TextEditingController();
  final _isyeriAdresiController = TextEditingController();
  final _isyeriTelefonController = TextEditingController();
  final _isyeriWebAdresiController = TextEditingController();
  final _sozlesmeNoController = TextEditingController();
  final _epostaoController = TextEditingController();
  
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  var SharedPreferences;

  @override
  void dispose() {
    _isyeriAdiController.dispose();
    _isyeriAdresiController.dispose();
    _isyeriTelefonController.dispose();
    _isyeriWebAdresiController.dispose();
    _sozlesmeNoController.dispose();
    _epostaoController.dispose();
    super.dispose();
  }

  // ignore: unused_element
  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('isyeriAdi', _isyeriAdiController.text);
      await prefs.setString('isyeriAdresi', _isyeriAdresiController.text);
      await prefs.setString('isyeriTelefon', _isyeriTelefonController.text);
      await prefs.setString('isyeriWebAdresi', _isyeriWebAdresiController.text);
      await prefs.setString('sozlesmeNo', _sozlesmeNoController.text);
      await prefs.setString('eposta', _epostaoController.text);

      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kayıt Sayfası'),
        backgroundColor: const Color.fromARGB(255, 21, 4, 154),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: _isyeriAdiController,
                decoration: const InputDecoration(
                  labelText: 'İş Yeri Adı',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen iş yeri adını girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _isyeriAdresiController,
                decoration: const InputDecoration(
                  labelText: 'İş Yeri Adresi',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen iş yeri adresini girin';
                  }
                  return null;
                },
              ),

              TextFormField(
                controller: _epostaoController,
                decoration: const InputDecoration(
                  labelText: 'Mail',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen iş yeri mailini girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _isyeriTelefonController,
                decoration: const InputDecoration(
                  labelText: 'İş Yeri Telefonu',
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen iş yeri telefonunu girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _isyeriWebAdresiController,
                decoration: const InputDecoration(
                  labelText: 'İş Yeri Web Adresi',
                ),
                keyboardType: TextInputType.url,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen iş yeri web adresini girin';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _sozlesmeNoController,
                decoration: const InputDecoration(
                  labelText: 'Sözleşme Numarası',
                ),
                keyboardType: TextInputType.url,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen sözleşme numarası girin';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('Form doğrulandı'),
                        ),
                      );
                    }
                  },
                  child: const Text('Gönder'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


