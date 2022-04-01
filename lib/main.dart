import 'package:flutter/material.dart';
import 'package:flutter_kakao_login_example/screens/home_screen.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';

void main() {
  KakaoSdk.init(nativeAppKey: 'ed6b6585a5003b6e98851f6a6b75ab6f');
  runApp(
    MaterialApp(
      home: HomeScreen(),
    ),
  );
}
