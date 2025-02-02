import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:stareet/utils/color.dart';
import 'package:stareet/utils/fontstyle.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/backgroundImage.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(
            iconSize: 17,
            icon: const Icon(Icons.arrow_back_ios),
            color: AppColor.text,
            onPressed: () {
              FirebaseAuth.instance.signOut();
              Navigator.pushNamed(context, '/login');
            },
          ),
          title: Text(
            '마이페이지',
            style: text16,
          ),
          actions: [
            IconButton(
              iconSize: 26,
              icon: const Icon(Icons.settings),
              color: AppColor.text,
              onPressed: () {},
            )
          ],
        ),
        body: Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(25, 40, 25, 0),
              child: Column(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/profileImage.png', // 이미지 파일 경로를 입력하세요.
                        width: 72,
                        height: 72,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('user1.nickName!', style: text18), //user title
                      Spacer(),
                      Text('닉네임은 일곱글', style: text18),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
