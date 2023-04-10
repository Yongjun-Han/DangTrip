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
      extendBody: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HomeBanner(),
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 72,
        height: 72,
        child: FittedBox(
          child: FloatingActionButton(
            onPressed: () {
              print('FAB');
            },
            backgroundColor: const Color(0xffA9A8D3),
            child: const RotatedBox(
              quarterTurns: 1,
              child: Icon(Icons.route_outlined),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        color: const Color(0xff807ec2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.map_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.photo_camera_back),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.favorite_border_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
