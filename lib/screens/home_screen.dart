import 'package:flutter/material.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  Future<void> kakaoLogin() async {
    final isInstalledKakaoTalk = await isKakaoTalkInstalled();
    if (isInstalledKakaoTalk) {
      try {
        OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
        print('로그인성공:$token');
      } catch (error) {
        print('로그인 실패 $error');
      }
    } else {
      try {
        OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
        print('로그인성공:$token');
      } catch (error) {
        print('로그인 실패 $error');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text('카카오 로그인 버튼'),
          onPressed: kakaoLogin,
        ),
      ),
    );
  }
}
