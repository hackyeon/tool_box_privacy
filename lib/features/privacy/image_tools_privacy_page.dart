import 'package:flutter/material.dart';

import '../../core/constants/app_links.dart';

class ImageToolsPrivacyPage extends StatelessWidget {
  const ImageToolsPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('이미지 도구 개인정보 처리방침')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            '이미지 도구는 사용자의 개인정보를 수집하거나 저장하지 않습니다.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          const _PolicyItem(
            '선택한 이미지는 압축, 크기 조절, 포맷 변환, 자르기, 회전, 반전 처리를 위해서만 사용됩니다.',
          ),
          const _PolicyItem(
            '이미지 처리는 사용자의 기기 또는 브라우저 내부에서 진행되며, 서버로 전송되지 않습니다.',
          ),
          const _PolicyItem(
            '처리된 이미지는 사용자가 직접 저장하거나 공유할 수 있으며, 개발자가 별도로 수집하지 않습니다.',
          ),
          const _PolicyItem(
            '앱은 선택한 이미지의 파일명, 이미지 크기, 용량 등 처리에 필요한 기본 정보만 화면 표시와 변환 작업에 사용합니다.',
          ),
          const _PolicyItem(
            '앱은 사용자의 이미지 또는 개인정보를 제3자에게 제공하거나 판매하지 않습니다.',
          ),
          const SizedBox(height: 24),
          Text('문의: ${AppLinks.contactEmail}'),
          const SizedBox(height: 8),
          const Text('시행일: 2026년 6월 20일'),
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
