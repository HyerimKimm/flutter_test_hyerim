import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: AppBar(
          title: Text('Login'),
          centerTitle: true,
          titleTextStyle: TextStyle(fontSize: 40, fontFamily: 'cheolpil', color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextFormField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                hintText: '아이디를 입력하세요.', hintStyle: TextStyle(color: Colors.grey)
              ),
            ),
            SizedBox(height: 15,),
            TextFormField(
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                hintText: '비밀번호를 입력하세요.', hintStyle: TextStyle(color: Colors.grey)
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton(
                  onPressed: (){},
                  child: SizedBox(width: 200, child: Center(child: Text('로그인'))),
                ),
                SizedBox(),
                TextButton(
                    onPressed: (){},
                    child: SizedBox(width: 200, child: Center(child: Text('회원가입')))
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
