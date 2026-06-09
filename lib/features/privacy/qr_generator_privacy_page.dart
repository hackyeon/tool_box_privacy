import 'package:flutter/material.dart';

import '../../core/constants/app_links.dart';

class QrGeneratorPrivacyPage extends StatelessWidget {
  const QrGeneratorPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('QR 생성기 개인정보 처리방침')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            'QR 생성기는 사용자의 개인정보를 수집하거나 저장하지 않습니다.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          const _PolicyItem(
            '입력한 텍스트, 링크, 와이파이 정보, 전화번호, 이메일 정보는 서버로 전송되지 않습니다.',
          ),
          const _PolicyItem(
            '모든 QR 코드 생성은 사용자의 기기 내에서 처리됩니다.',
          ),
          const _PolicyItem(
            '생성된 QR 이미지는 사용자가 직접 저장하거나 공유할 수 있으며, 개발자가 별도로 수집하지 않습니다.',
          ),
          const _PolicyItem(
            '앱은 사용자의 개인정보를 제3자에게 제공하거나 판매하지 않습니다.',
          ),
          const SizedBox(height: 24),
          Text('문의: ${AppLinks.contactEmail}'),
          const SizedBox(height: 8),
          const Text('시행일: 2026년 6월 9일'),
        ],
      ),
    );
  }
}

class _PolicyItem extends StatelessWidget {
  final String text;

  const _PolicyItem(this.text);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('•  '),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}