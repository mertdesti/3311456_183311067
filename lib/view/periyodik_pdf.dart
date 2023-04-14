import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_full_pdf_viewer_null_safe/flutter_full_pdf_viewer.dart';
// ignore: unused_import
import 'package:flutter_full_pdf_viewer_null_safe/full_pdf_viewer_plugin.dart';
import 'package:flutter_full_pdf_viewer_null_safe/full_pdf_viewer_scaffold.dart';
// ignore: unused_import
import 'package:path_provider/path_provider.dart';
// ignore: unused_import
import 'dart:async';

class PdfViewer extends StatelessWidget {
  final String path;
  const PdfViewer({super.key, required this.path});

  @override
  Widget build(BuildContext context) {
    return PDFViewerScaffold(
      path: path,
    );
  }
}
