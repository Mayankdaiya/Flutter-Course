import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:webview_flutter/webview_flutter.dart';

class webviewdemo extends StatelessWidget {
  const webviewdemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Web View Google")),
      body: WebView(
        initialUrl: "https://google.com",
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
