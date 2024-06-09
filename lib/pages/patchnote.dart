import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Patchnote extends StatefulWidget {
  const Patchnote({super.key});

  @override
  _PatchnoteState createState() => _PatchnoteState();
}

class _PatchnoteState extends State<Patchnote> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the controller
    _controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://overwatch.blizzard.com/en-us/news/patch-notes/'),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Patch Notes'),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
