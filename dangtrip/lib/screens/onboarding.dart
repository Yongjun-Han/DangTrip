import 'package:dangtrip/screens/home.dart';
import 'package:dangtrip/screens/login.dart';
import 'package:dangtrip/screens/registration.dart';
import 'package:flutter/material.dart';

class OnBoard extends StatelessWidget {
  const OnBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(22),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 80,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    '먼저 둘러볼게요',
                    style: TextStyle(
                        fontWeight: FontWeight.w500, color: Color(0xffa0a0a0)),
                  ),
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
            ),
            const SizedBox(
              height: 120,
            ),
            Container(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          fullscreenDialog: true,
                          builder: (context) => const Registration(),
                        ),
                      );
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xff807ec2),
                          borderRadius: BorderRadius.circular(15)),
                      child: const Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 122),
                        child: Text(
                          '댕트립 시작하기',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        '이미계정이 있으신가요? ',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                          color: Color(0xffbfbfbf),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              fullscreenDialog: true,
                              builder: (context) => const Login(),
                            ),
                          );
                        },
                        child: const Text(
                          '로그인하기',
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w700,
                            color: Color(0xff807ec2),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
