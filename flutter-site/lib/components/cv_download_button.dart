import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:universal_html/html.dart';

class CVDownloadButton extends StatelessWidget {
  const CVDownloadButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: downloadCv,
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0),
        ),
        side: BorderSide(
          color: Theme.of(context).colorScheme.background,
          width: 1.5
        ),
        elevation: 1,
        shadowColor: Theme.of(context).colorScheme.background,
      ),
      icon: Icon(
        Icons.download,
        color: Theme.of(context).colorScheme.onBackground,
      ),
      label: Text(
        'GET CV',
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
          color: Theme.of(context).colorScheme.onBackground,
        )
      ),
    );
  }

  void downloadCv() async {
    downloadLocalFile('assets/CV.pdf', 'CV - Egor Tarasov.pdf');
  }

  void downloadLocalFile(String path, String downloadName) async {
    var data = await rootBundle.load(path);
    var base64 = base64Encode(data.buffer.asUint8List());
    final anchor = AnchorElement(href: 'data:application/octet-stream;base64,$base64');
    anchor.download = downloadName;
    anchor.click();
  }
}