import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // final Future<List<WebtoonModel>> webtoons = ApiService.getTodaysToons();

  @override
  Widget build(BuildContext context) {
    // print(webtoons);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 320,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/assets/banner/AD_1.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
