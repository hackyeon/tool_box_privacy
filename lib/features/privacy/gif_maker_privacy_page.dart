import 'package:flutter/material.dart';

import '../../core/constants/app_links.dart';

class GifMakerPrivacyPage extends StatelessWidget {
  const GifMakerPrivacyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('움짤 만들기 개인정보 처리방침')),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(
            '움짤 만들기는 사용자의 개인정보를 수집하거나 저장하지 않습니다.',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          const SizedBox(height: 20),
          const _PolicyItem(
            '선택한 동영상은 GIF 생성, 구간 선택, 크기 조절, 프레임 추출 등 사용자가 요청한 변환 작업을 위해서만 사용됩니다.',
          ),
          const _PolicyItem(
            '동영상에서 GIF를 만드는 과정은 사용자의 기기 또는 브라우저 내부에서 처리되며, 서버로 전송되지 않습니다.',
          ),
          const _PolicyItem('선택한 동영상과 생성된 GIF 파일은 개발자가 별도로 저장하거나 수집하지 않습니다.'),
          const _PolicyItem(
            '생성된 GIF는 사용자가 직접 저장하거나 공유할 수 있으며, 저장 및 공유 여부는 사용자가 선택합니다.',
          ),
          const _PolicyItem(
            '앱은 선택한 동영상의 파일명, 길이, 크기, 용량 등 변환에 필요한 기본 정보만 화면 표시와 GIF 생성 작업에 사용합니다.',
          ),
          const _PolicyItem(
            '앱은 사용자의 동영상, GIF 파일 또는 개인정보를 제3자에게 제공하거나 판매하지 않습니다.',
          ),
          const SizedBox(height: 24),
          Text('문의: ${AppLinks.contactEmail}'),
          const SizedBox(height: 8),
          const Text('시행일: 2026년 7월 2일'),
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
