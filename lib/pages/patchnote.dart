import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Patchnote extends StatefulWidget {
  Patchnote({super.key});

  @override
  State<Patchnote> createState() => _PatchnoteState();
}

class _PatchnoteState extends State<Patchnote> {
  late final WebViewController _controller;
  @override
  void initState() {
    super.initState();
    // Initialize the controller

    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setBackgroundColor(const Color(0x00000000))
      ..setNavigationDelegate(
        NavigationDelegate(
          onProgress: (int progress) {
            // Update loading bar.
            log("Is loading");
          },
          onPageStarted: (String url) {
            ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Page is loading Overbuff.com")));
          },
          onPageFinished: (String url) {},
          onHttpError: (HttpResponseError error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    'Page is having error: ${error} while loading Overbuff.com')));
            log(error.toString());
          },
          onWebResourceError: (WebResourceError error) {
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text(
                    "Page is having error: ${error} while loading Overbuff.com")));
            log(error.toString());
          },
          onNavigationRequest: (NavigationRequest request) {
            if (request.url.startsWith('https://www.overbuff.com/')) {
              return NavigationDecision.prevent;
            }
            return NavigationDecision.navigate;
          },
        ),
      )
      ..loadRequest(Uri.parse('https://www.overbuff.com/'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Player Stats'),
      ),
      body: WebViewWidget(controller: _controller),
    );
  }
}
