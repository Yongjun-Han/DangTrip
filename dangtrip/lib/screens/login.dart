import 'package:dangtrip/Common/Component/text_input.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CustomTextInput(
            hintText: '이메일을 입력해주세요',
            onChanged: (String value) {},
            autofocus: true,
            // errorText: '올바르지 않은 이메일 형식입니다',
          ),
          CustomTextInput(
            hintText: '비밀번호를 입력해주세요',
            onChanged: (String value) {},
            obscureText: true,
            errorText: "영문, 특수문자, 숫자 중 반드시 2개 이상 포함되어야 합니다",
            // errorText: '올바르지 않은 이메일 형식입니다',
          )
        ],
      ),
    );
  }
}
