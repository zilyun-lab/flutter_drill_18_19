import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class IRPage extends StatelessWidget {
  const IRPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('IR情報'),
      ),
      body: const WebView(
        initialUrl: 'https://pub.dev/packages/url_launcher/install',
      ),
    );
  }
}
