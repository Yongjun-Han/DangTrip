import 'package:dangtrip/widgets/banner_slide.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  'lib/assets/banner/AD_1.png',
  'lib/assets/banner/AD_2.png',
  'lib/assets/banner/AD_3.png',
  'lib/assets/banner/AD_4.png',
  'lib/assets/banner/AD_5.png',
];

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    // print(webtoons);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: const [HomeBanner()],
      ),
    );
  }
}
