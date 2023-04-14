//ignore_for_file: deprecated_member_use
// ignore: unused_import
import 'package:tsc/view/full_file.dart';
// ignore: unused_import,
import 'dart:io';
// ignore: unused_import
import 'dart:typed_data';
// ignore: unused_import
import 'package:tsc/view/periyodik_pdf.dart';
// ignore: unused_import
import 'package:pdf/pdf.dart';

// ignore: unused_import
import 'package:pdf/widgets.dart' as pw;
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:path_provider/path_provider.dart';

const List<String> list = <String>['Uygun', 'Uygun Değil', 'Kapsam Dışı'];
const List<String> list1 = <String>['Açık', 'Kapalı', 'Yağışlı'];
const List<String> list2 = <String>['Islak', 'Nemli', 'Kuru'];
const List<String> list3 = <String>[
  'Periyodik',
  'Tekrar',
  'Tadilat',
  'Yeni Tesis'
];
const List<String> list4 = <String>['Var', 'Yok'];
const List<String> list5 = <String>[
  'Ring',
  'Temel',
  'Yüzeysel',
  'Derin',
  'Belirsiz'
];

class PeriyodikKontrol extends StatefulWidget {
  const PeriyodikKontrol({Key? key}) : super(key: key);

  @override
  State<PeriyodikKontrol> createState() => _PeriyodikKontrolState();
}

class _PeriyodikKontrolState extends State<PeriyodikKontrol> {
  final _formKey = GlobalKey<FormState>();

  final _numaraController = TextEditingController();

  String dropdownValue = list.first;
  String dropdownValue1 = list.first;
  String dropdownValue2 = list.first;
  String dropdownValue3 = list.first;
  String dropdownValue4 = list.first;
  String dropdownValue5 = list.first;
  String dropdownValue6 = list.first;
  String dropdownValue7 = list.first;
  String dropdownValue8 = list.first;
  String dropdownValue9 = list.first;
  String dropdownValue10 = list.first;
  String dropdownValue11 = list.first;
  String dropdownValue12 = list.first;
  String dropdownValue13 = list.first;
  String dropdownValue14 = list.first;
  String dropdownValue15 = list.first;
  String dropdownValue16 = list.first;
  String dropdownValue17 = list.first;
  String dropdownValue18 = list.first;
  String dropdownValue19 = list.first;
  String dropdownValue20 = list.first;
  String dropdownValue21 = list.first;
  String dropdownValue22 = list.first;
  String dropdownValue23 = list.first;
  String dropdownValue24 = list.first;
  String dropdownValue25 = list.first;
  String dropdownValue26 = list.first;
  String dropdownValue27 = list.first;
  String dropdownValue28 = list1.first;
  String dropdownValue29 = list2.first;
  String dropdownValue30 = list3.first;
  String dropdownValue31 = list4.first;
  String dropdownValue32 = list5.first;
  String dropdownValue33 = list4.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Periyodik Kontrol"),
        backgroundColor: const Color.fromARGB(255, 21, 4, 154),
      ),
      backgroundColor: const Color.fromARGB(255, 187, 180, 240),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("İş Yerini Seçiniz:"),
                  DropdownButton(items: const [
                    DropdownMenuItem(
                      value: "sa",
                      child: Text("sa"),
                    ),
                    DropdownMenuItem(
                      value: "ssdaa",
                      child: Text("ssdaa"),
                    ),
                    DropdownMenuItem(
                      value: "sasda",
                      child: Text("sasda"),
                    )
                  ], onChanged: (value) {}),
                  const Text(
                    "----------------------Tesis Bilgileri----------------------",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  customSizedBox(),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Hava Durumu:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      customSizedBox(),
                      DropdownButton<String>(
                        value: dropdownValue28,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue28 = value!;
                          });
                        },
                        items: list1
                            .map<DropdownMenuItem<String>>((String value28) {
                          return DropdownMenuItem<String>(
                            value: value28,
                            child: Text(value28),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Toprak Durumu:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      customSizedBox(),
                      DropdownButton<String>(
                        value: dropdownValue29,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue29 = value!;
                          });
                        },
                        items: list2
                            .map<DropdownMenuItem<String>>((String value29) {
                          return DropdownMenuItem<String>(
                            value: value29,
                            child: Text(value29),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Kontrol Nedeni:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      customSizedBox(),
                      DropdownButton<String>(
                        value: dropdownValue30,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue30 = value!;
                          });
                        },
                        items: list3
                            .map<DropdownMenuItem<String>>((String value30) {
                          return DropdownMenuItem<String>(
                            value: value30,
                            child: Text(value30),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Tesis Topraklama Projesi:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      customSizedBox(),
                      DropdownButton<String>(
                        value: dropdownValue31,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue31 = value!;
                          });
                        },
                        items: list4
                            .map<DropdownMenuItem<String>>((String value31) {
                          return DropdownMenuItem<String>(
                            value: value31,
                            child: Text(value31),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Topraklayıcı Tesis Şekli:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      customSizedBox(),
                      DropdownButton<String>(
                        value: dropdownValue32,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue32 = value!;
                          });
                        },
                        items: list5
                            .map<DropdownMenuItem<String>>((String value32) {
                          return DropdownMenuItem<String>(
                            value: value32,
                            child: Text(value32),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Text(
                        "Yıldırımdan Korunma Tesisat Projesi:",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      customSizedBox(),
                      DropdownButton<String>(
                        value: dropdownValue33,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue33 = value!;
                          });
                        },
                        items: list4
                            .map<DropdownMenuItem<String>>((String value33) {
                          return DropdownMenuItem<String>(
                            value: value33,
                            child: Text(value33),
                          );
                        }).toList(),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: _numaraController,
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText:
                          'Yıldırımdan Korunma Tesisatı Konumu ve Numarası',
                    ),
                  ),
                  customSizedBox(),
                  const Text(
                    "TEST, MUAYENE, DENEY",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "ESE PARATONER İÇİN TESPİT VE DEĞERLENDİRME",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  customSizedBox(),
                  const Text(
                    "Koruma borusu tesis edilmiş midir?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Koruma borusu galvaniz mi?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue1,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue1 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value1) {
                          return DropdownMenuItem<String>(
                            value: value1,
                            child: Text(value1),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Koruma borusunda oksitlenme var mı?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue2,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue2 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value2) {
                          return DropdownMenuItem<String>(
                            value: value2,
                            child: Text(value2),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Koruma borusu çapı uygun mudur?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue3,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue3 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value3) {
                          return DropdownMenuItem<String>(
                            value: value3,
                            child: Text(value3),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "İndirme iletkenleri 2x50mm midir?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue4,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue4 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value4) {
                          return DropdownMenuItem<String>(
                            value: value4,
                            child: Text(value4),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "İndirme iletkenleri bakır mıdır?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue5,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue5 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value5) {
                          return DropdownMenuItem<String>(
                            value: value5,
                            child: Text(value5),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "İndirme iletkenleri tespit kroşelerinde oksitlenme var mıdır?	",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue6,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue6 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value6) {
                          return DropdownMenuItem<String>(
                            value: value6,
                            child: Text(value6),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "İndirme iletkenleri köşe veya 'S' yapmakta mıdır?	",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue7,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue7 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value7) {
                          return DropdownMenuItem<String>(
                            value: value7,
                            child: Text(value7),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "İndirme iletkenleri tespit kroşeleri kızıl döküm veya paslanmaz krom mudur?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue8,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue8 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value8) {
                          return DropdownMenuItem<String>(
                            value: value8,
                            child: Text(value8),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Muayene klemensi bulunmakta mıdır?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue9,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue9 = value!;
                          });
                        },
                        items:
                            list.map<DropdownMenuItem<String>>((String value9) {
                          return DropdownMenuItem<String>(
                            value: value9,
                            child: Text(value9),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Muayene klemensi oksitlenmeye karşı korumaya alınmış mı?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue10,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue10 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value10) {
                          return DropdownMenuItem<String>(
                            value: value10,
                            child: Text(value10),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Muayene klemensi zeminden 270 cm yukarda mı?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue11,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue11 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value11) {
                          return DropdownMenuItem<String>(
                            value: value11,
                            child: Text(value11),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Muayene klemensi ile koruma borusu arası mesafe 20 cm midir?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue12,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue12 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value12) {
                          return DropdownMenuItem<String>(
                            value: value12,
                            child: Text(value12),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Çatı direği boyu/çapı nedir?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue14,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue14 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value14) {
                          return DropdownMenuItem<String>(
                            value: value14,
                            child: Text(value14),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Çatı direği çatı bağlantıları sağlam mı?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue15,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue15 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value15) {
                          return DropdownMenuItem<String>(
                            value: value15,
                            child: Text(value15),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Çatı direği üzerinde direk bağlantı klemensi bulunmakta mı?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue16,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue16 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value16) {
                          return DropdownMenuItem<String>(
                            value: value16,
                            child: Text(value16),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Topraklama hattı tesis edilmiş midir?	",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue17,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue17 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value17) {
                          return DropdownMenuItem<String>(
                            value: value17,
                            child: Text(value17),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Topraklama tesisi direnci kaç ohm'dur? (Sınır değer 10 Ohm)",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue18,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue18 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value18) {
                          return DropdownMenuItem<String>(
                            value: value18,
                            child: Text(value18),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "İndirme iletkenleri topraklama elektrotlarına uygun bir şekilde tutturulmuş mudur?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue19,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue19 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value19) {
                          return DropdownMenuItem<String>(
                            value: value19,
                            child: Text(value19),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Ağ iletkenlerinin kesitleri standartlara uygun mu?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue20,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue20 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value20) {
                          return DropdownMenuItem<String>(
                            value: value20,
                            child: Text(value20),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Ağ risk analizinde belirlenen genişlikte midir?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue21,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue21 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value21) {
                          return DropdownMenuItem<String>(
                            value: value21,
                            child: Text(value21),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "İNDİRME İLETKENLERİ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Ağ için yeterli sayıda indiricilere bağlantı var mı? En az 20m'de 1 indirici iletken bulunuyor mu?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue22,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue22 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value22) {
                          return DropdownMenuItem<String>(
                            value: value22,
                            child: Text(value22),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0)))))),
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "İndirme iletkenleri standartlara uygun kesitte som bakır veya eşdeğer iletken mi?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue23,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue23 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value23) {
                          return DropdownMenuItem<String>(
                            value: value23,
                            child: Text(value23),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0))))))
                    ],
                  ),
                  customSizedBox(),
                  const Text(
                    "Doğal indirici metal yapılar kullanılmıyor ise indirme iletkenleri tespit kroşeleri kızıl döküm mü?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      DropdownButton<String>(
                        value: dropdownValue24,
                        icon: const Icon(Icons.arrow_downward),
                        elevation: 16,
                        style: const TextStyle(color: Colors.deepPurple),
                        underline: Container(
                          height: 2,
                          color: Colors.deepPurpleAccent,
                        ),
                        onChanged: (String? value) {
                          setState(() {
                            dropdownValue24 = value!;
                          });
                        },
                        items: list
                            .map<DropdownMenuItem<String>>((String value24) {
                          return DropdownMenuItem<String>(
                            value: value24,
                            child: Text(value24),
                          );
                        }).toList(),
                      ),
                      const SizedBox(width: 10.0),
                      const Expanded(
                          child: TextField(
                              decoration: InputDecoration(
                                  labelText: "Açıklama",
                                  enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color: Color.fromARGB(255, 0, 0, 0))),
                                  focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                          color:
                                              Color.fromARGB(255, 0, 0, 0))))))
                    ],
                  ),
                  customSizedBox(),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        orderPdfView(context, "Mert");
                      },
                      child: const Text("Gönder"),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }

  Widget customSizedBox() => const SizedBox(
        width: 20,
        height: 20,
      );
}

// class PdfViewer extends StatelessWidget {
//   final String path;
//   const PdfViewer({super.key, required this.path});

//   @override
//   Widget build(BuildContext context) {
//     return PDFViewerScaffold(
//       path: path,
//     );
//   }
// }
