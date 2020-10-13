import 'package:flutter/material.dart';
import 'home.dart';
import 'package:ali_auth_wbq/ali_auth.dart';
import 'dart:io';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  BuildContext mContext;

  @override
  void initState() {
    super.initState();
    // 初始化插件
    if(Platform.isAndroid){
      AliAuthPlugin.initSdk('uYhNaUWEW+1rV9cq27oAQVWi8qFaF1wKfHr6BjrdnMoyQbtAxIA7q/ToLl1xKGCAwDl66Mii6KXK3FstD+PNcwS0aFCLorOrYHMHed8FX7AT8qu/AlzTXE05g0FmUMb5z1QKCiyvpmP+THs04fCfVtHsYdirkJGcd58r24o3QykIatcZYgd1jB3WAz3HLUqCg4afUK49SggbPdwscSfVV8wcB/hP+ST9kUVD02JmsqLA4YZUCRuUX2+o5AG1UpJwi/OHEccrFyEwuODaFzDSMPVth2pTZEwCB/g3PeLWhUQlWxvRqolgWQ==');
    } else {
      AliAuthPlugin.initSdk('QoIQ+5dWhzrstP5HU17qnX8bcKIJYIeTYLG3jFbjoIBt1NMiwS6pTnKoHI20C4X8nhchaSmPhgCxKfLmSG6BHu6QD/5VarfUuSH1g0wu5BPn0uqTgqb7FJF96z/84w1Rou5UejHtkeXjgcdJa1RKEfK16S88QkNswONgqVfDjgFe1Zg6seMDUAbxVc3kIQeEdJ16Ml/ngCRveLtWuswOxZtmiCykKUEWq+bH/4IZ0jv21I1BOdxdU9GDM9RkMh3zjynV1JWTe5U=');
    }
      
    // 登录监听
    AliAuthPlugin.loginListen( type: false, onEvent: _onEvent, onError: _onError);
    
  }

  // 错误处理
  void _onEvent(event) {
    print("------------------------------------------------------------------------------------------$event");
    Navigator.of(mContext).push(
      new MaterialPageRoute(builder: (_) {
        return Home();
      })
    );
  }

  // 成功后处理
  void _onError(error) {
    print("==========================================================================================$error");
  }

  @override
  Widget build(BuildContext context) {
    mContext = context;
    return Scaffold(
        appBar: AppBar(
          title: const Text('阿里云一键登录插件'),
        ),
        body: Column(
          children: <Widget>[
            RaisedButton(
              onPressed: () async {
                await AliAuthPlugin.loginDialog;
              },
              child: Text('弹窗登录'),
            ),
            RaisedButton(
              onPressed: () async {
                await AliAuthPlugin.login;
              },
              child: Text('直接登录'),
            ),
            RaisedButton(
              onPressed: () async {
                final checkVerifyEnable = await AliAuthPlugin.checkVerifyEnable;
                print(checkVerifyEnable);
              },
              child: Text('检测环境是否支持'),
            ),
          ],
        ),
      );
  }
}
