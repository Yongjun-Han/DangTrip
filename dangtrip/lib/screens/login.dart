import 'package:dangtrip/Common/Component/custom_button.dart';
import 'package:dangtrip/Common/Component/text_input.dart';
import 'package:dangtrip/Common/const/colors.dart';
import 'package:dangtrip/layout/default_layout.dart';
import 'package:dangtrip/screens/home.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: SingleChildScrollView(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: SafeArea(
          top: true,
          bottom: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_left_rounded,
                      size: 30,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 20),
                    child: Text('회원가입'),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const _Title(),
                    const SizedBox(
                      height: 20,
                    ),
                    const _IdTitle(),
                    const SizedBox(
                      height: 12,
                    ),
                    const CustomTextInput(
                      hintText: '이메일을 입력해주세요',
                      autofocus: true,
                      // errorText: '올바르지 않은 이메일 형식입니다',
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const _PwTitle(),
                    const SizedBox(
                      height: 12,
                    ),
                    const CustomTextInput(
                      hintText: '비밀번호를 입력해주세요',
                      obscureText: true,
                      errorText: "영문, 특수문자, 숫자 중 반드시 2개 이상 포함되어야 합니다",
                      // errorText: '올바르지 않은 이메일 형식입니다',
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            // fullscreenDialog: true,
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                        showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                              height: 360,
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: 32,
                                    decoration: const BoxDecoration(
                                      color: Colors.black,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: const [
                                        Icon(
                                          Icons
                                              .check_box_outline_blank_outlined,
                                          color: Colors.white54,
                                        ),
                                        SizedBox(
                                          width: 8,
                                        ),
                                        Text(
                                          '오늘하루 그만보기',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white54,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                      ),
                                      child: Image.asset(
                                        'lib/assets/event/kanu_dog.jpg',
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        );
                      },
                      child: const CustomButton(
                        buttonTitle: '로그인',
                        buttonBgColor: PRIMARY_COLOR,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'OR',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const CustomButton(
                      buttonTextColor: Color(0xff493523),
                      buttonTitle: '카카오톡 로그인',
                      buttonBgColor: Color(0xffF6E24B),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    const CustomButton(
                      buttonTitle: '네이버 로그인',
                      buttonBgColor: Color(0xff5AC467),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '로그인',
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}

class _IdTitle extends StatelessWidget {
  const _IdTitle();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '아이디',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

class _PwTitle extends StatelessWidget {
  const _PwTitle();

  @override
  Widget build(BuildContext context) {
    return const Text(
      '비밀번호',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}
