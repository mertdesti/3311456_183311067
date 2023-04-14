// ignore: avoid_web_libraries_in_flutter, unused_import
import 'dart:js_util';

// ignore: unused_import
import 'package:flutter/material.dart' as material;
// ignore: unused_import
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
// ignore: unused_import
import 'dart:io';
// ignore: unused_import
import 'dart:async';
// ignore: unused_import
import 'package:tsc/periyodik_kontrol.dart';
import 'package:tsc/view/periyodik_pdf.dart';

orderPdfView(context, String title) async {
  final Document pdf = Document();
  pdf.addPage(Page(
      pageFormat: PdfPageFormat.a4,
      orientation: PageOrientation.natural,
      build: (context) => Column(children: [
            Divider(height: 500),
            Text(
              title,
              style: const TextStyle(fontSize: 40, color: PdfColors.grey),
            ),
            Row(children: [Text("Test")])
          ])));

  final String dir = (await getApplicationDocumentsDirectory()).path;
  final String path = '$dir/report.pdf';
  final File file = File(path);
  await file.writeAsBytes((await pdf.save()));
  material.Navigator.of(context).push(material.MaterialPageRoute(
    builder: (_) => PdfViewer(path: path),
  ));
}
