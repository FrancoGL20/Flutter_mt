import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold (
    appBar: AppBar(
      title: const Text('Web Page'),
      backgroundColor: Colors.black
    ),
    body: const WebView(
      initialUrl: 'https://www.balcondelzocalo.com',
      javascriptMode: JavascriptMode.unrestricted,
    )
  );
}