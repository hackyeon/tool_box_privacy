import 'package:flutter/material.dart';
import 'package:tool_box_privacy/features/privacy/qr_generator_privacy_page.dart';

import 'features/privacy/ez_pdf_privacy_page.dart';
import 'features/privacy/gif_maker_privacy_page.dart';
import 'features/privacy/image_tools_privacy_page.dart';
import 'features/privacy/privacy_index_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  static const routeHome = '/';
  static const routeEzPdf = '/ez-pdf';
  static const routeQrGenerator = '/qr-generator';
  static const routeImageTools = '/image-tools';
  static const routeGifMaker = '/gif-maker';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '편한도구함 개인정보 처리방침',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorSchemeSeed: Colors.blue, useMaterial3: true),
      initialRoute: routeHome,
      routes: {
        routeHome: (_) => const PrivacyIndexPage(),
        routeEzPdf: (_) => const EzPdfPrivacyPage(),
        routeQrGenerator: (_) => const QrGeneratorPrivacyPage(),
        routeImageTools: (_) => const ImageToolsPrivacyPage(),
        routeGifMaker: (_) => const GifMakerPrivacyPage(),
      },
    );
  }
}
