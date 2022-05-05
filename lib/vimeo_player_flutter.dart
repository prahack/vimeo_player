library vimeo_player_flutter;

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

///vimeo player for Flutter apps
///Flutter plugin based on the [webview_flutter] plugin
///[videoId] is the only required field to use this plugin
///[videoH] is now required
///
///
///
class VimeoPlayer extends StatelessWidget {
  final String videoId;
  final String videoH;

  ///constructor
  ///
  ///
  ///
  const VimeoPlayer({
    Key? key,
    required this.videoId,
    required this.videoH,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: _videoPage(this.videoId, this.videoH),
      javascriptMode: JavascriptMode.unrestricted,
    );
  }

  ///web page containing iframe of the vimeo video
  ///
  ///
  ///
  ///
  String _videoPage(String videoId, String videoH) {
    final html = '''
            <html>
              <head>
                <style>
                  body {
                   background-color: lightgray;
                   margin: 0px;
                   }
                </style>
                <meta name="viewport" content="initial-scale=1.0, maximum-scale=1.0">
                <meta http-equiv="Content-Security-Policy" 
                content="default-src * gap:; script-src * 'unsafe-inline' 'unsafe-eval'; connect-src *; 
                img-src * data: blob: android-webview-video-poster:; style-src * 'unsafe-inline';">
             </head>
             <body>
                <iframe 
                src="https://player.vimeo.com/video/$videoId?h=$videoH?loop=0&autoplay=0" 
                width="100%" height="100%" frameborder="0" allow="fullscreen" 
                allowfullscreen></iframe>
             </body>
            </html>
            ''';
    final String contentBase64 =
        base64Encode(const Utf8Encoder().convert(html));
    return 'data:text/html;base64,$contentBase64';
  }
}
