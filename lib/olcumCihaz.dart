// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: camel_case_types
class olcumCihazi extends StatefulWidget {
  const olcumCihazi({super.key});

  @override
  State<olcumCihazi> createState() => _olcumCihaziState();
}

// ignore: camel_case_types
class _olcumCihaziState extends State<olcumCihazi> {
  final _formKey = GlobalKey<FormState>();

  final _markaController = TextEditingController();
  final _modelController = TextEditingController();
  final _serinoController = TextEditingController();
  final _gecerliliksuresiController = TextEditingController();
  final _kalibrasyonController = TextEditingController();

  final _rapornoController = TextEditingController();
  // ignore: non_constant_identifier_names, prefer_typing_uninitialized_variables
  var SharedPreferences;
  @override
  void dispose() {
    _markaController.dispose();
    _modelController.dispose();
    _serinoController.dispose();
    _gecerliliksuresiController.dispose();
    _kalibrasyonController.dispose();
    _rapornoController.dispose();
    super.dispose();
  }

  // ignore: unused_element
  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('marka', _markaController.text);
      await prefs.setString('model', _modelController.text);
      await prefs.setString('serino', _serinoController.text);
      await prefs.setString('gecerliliksuresi', _gecerliliksuresiController.text);
      await prefs.setString('kalibrasyon', _kalibrasyonController.text);
      await prefs.setString('raporno', _rapornoController.text);

      // ignore: use_build_context_synchronously
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ölçüm Cihaz Bilgileri'),
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
                controller: _markaController,
                decoration: const InputDecoration(
                  labelText: 'Marka',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen boş bırakmayınız';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _modelController,
                decoration: const InputDecoration(
                  labelText: 'Model',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen boş bırakmayınız';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _rapornoController,
                decoration: const InputDecoration(
                  labelText: ' Rapor No',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen boş bırakmayınız';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _serinoController,
                decoration: const InputDecoration(
                  labelText: 'Seri No',
                ),
                keyboardType: TextInputType.phone,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen boş bırakmayınız';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _kalibrasyonController,
                decoration: const InputDecoration(
                  labelText: 'Kalibrasyon',
                ),
                keyboardType: TextInputType.url,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen boş bırakmayınız';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _gecerliliksuresiController,
                decoration: const InputDecoration(
                  labelText: 'Geçerlilik Süresi',
                ),
                keyboardType: TextInputType.url,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Lütfen boş bırakmayınız';
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
