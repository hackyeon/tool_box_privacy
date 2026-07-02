import 'package:flutter/material.dart';

import '../../app.dart';

class PrivacyIndexPage extends StatelessWidget {
  const PrivacyIndexPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('편한도구함 개인정보 처리방침')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            '각 도구의 개인정보 처리방침을 확인할 수 있습니다.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 16),
          Card(
            child: ListTile(
              leading: const Text('📄', style: TextStyle(fontSize: 24)),
              title: const Text('EZ PDF 개인정보 처리방침'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.of(context).pushNamed(App.routeEzPdf),
            ),
          ),

          const SizedBox(height: 8),

          Card(
            child: ListTile(
              leading: const Text('📄', style: TextStyle(fontSize: 24)),
              title: const Text('QR 생성기 개인정보 처리방침'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () =>
                  Navigator.of(context).pushNamed(App.routeQrGenerator),
            ),
          ),

          const SizedBox(height: 8),

          Card(
            child: ListTile(
              leading: const Text('📄', style: TextStyle(fontSize: 24)),
              title: const Text('이미지 도구 개인정보 처리방침'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.of(context).pushNamed(App.routeImageTools),
            ),
          ),

          const SizedBox(height: 8),

          Card(
            child: ListTile(
              leading: const Text('🎞️', style: TextStyle(fontSize: 24)),
              title: const Text('움짤 만들기 개인정보 처리방침'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () => Navigator.of(context).pushNamed(App.routeGifMaker),
            ),
          ),
        ],
      ),
    );
  }
}
