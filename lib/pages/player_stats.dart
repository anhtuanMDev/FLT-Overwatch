import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PlayerStats extends StatefulWidget {
  const PlayerStats({super.key});

  @override
  _PlayerStatsState createState() => _PlayerStatsState();
}

class _PlayerStatsState extends State<PlayerStats> {
  late final WebViewController _controller;

  @override
  void initState() {
    super.initState();
    // Initialize the controller
    _controller = WebViewController()
      ..loadRequest(
        Uri.parse('https://www.overbuff.com/'),
      );
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
