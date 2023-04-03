import 'package:flutter/material.dart';

class onBoard extends StatelessWidget {
  const onBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: const [
                Text(
                  '먼저 둘러볼게요',
                  style: TextStyle(
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      color: Color(0xffa0a0a0)),
                )
              ],
            ),
            const SizedBox(
              height: 72,
            ),
            const SizedBox(
              width: 266,
              height: 266,
              child: Image(image: AssetImage('lib/assets/logo/location.gif')),
            ),
            const SizedBox(
              height: 72,
            ),
            const SizedBox(
              width: 200,
              child: Text(
                '전국 방방곡곡, 댕댕이와 추억 만들기',
                style: TextStyle(
                    color: Color(0xff505050),
                    fontSize: 24,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
}
