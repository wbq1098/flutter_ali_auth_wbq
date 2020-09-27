# ali_auth

这是一个阿里云号码认证服务中的一键登录的插件

由于项目的其他功能都采用阿里云的服务，在一键登录的功能上也采用阿里云利于后期的更好维护。

## 相关支持

|    平台  | 支持  |
| :------:|:----:|
| Android  | YES |
| Ios      | YES |

## 步骤

- [帮助文档](https://help.aliyun.com/product/75010.html)
- [前往添加号码认证方案-获取秘钥](https://dypns.console.aliyun.com/?spm=5176.12818093.favorites.ddypns.488716d0ttKe13#/)
- 使用秘钥初始化环境 AliAuthPlugin.initSdk()

## 注意事项

1、 针对移动闪退问题：
在示范工程，pods -> TARGETS -> ali_auth -> Build Settings -> Linking -> Other Linker Flags 里面加上 -ObjC（因为AuthSDK是通过pod依赖进去的，所有对应的target里面要加这个配置，不然移动网络会crash）
如下图所示：  
<img src="https://raw.githubusercontent.com/CodeGather/flutter_ali_auth/master/screenshot/error_add.jpg" alt="cmcc_crash" width="100">

2、该插件已添加ATAuthSDK.framework，在编译时请勿将ATAuthSDK.framework重复添加，以免出现未知错误
如下图所示添加的为错误操作
<img src="https://raw.githubusercontent.com/CodeGather/flutter_ali_auth/master/screenshot/error_add.jpg" alt="cmcc_crash" width="100"><img src="https://raw.githubusercontent.com/CodeGather/flutter_ali_auth/master/screenshot/error_add2.png" alt="cmcc_crash" width="100">
  
- DEMO效果入下
  
<img src="https://raw.githubusercontent.com/CodeGather/flutter_ali_auth/master/screenshot/WechatIMG7.jpeg" alt="android截图1" width="100"><img src="https://raw.githubusercontent.com/CodeGather/flutter_ali_auth/master/screenshot/WechatIMG6.jpeg" alt="android截图2" width="100"><img src="https://raw.githubusercontent.com/CodeGather/flutter_ali_auth/master/screenshot/WechatIMG5.jpeg" alt="android截图3" width="100"><img src="https://raw.githubusercontent.com/CodeGather/flutter_ali_auth/master/screenshot/IMG_4172.PNG" alt="ios截图1" width="100"><img src="https://raw.githubusercontent.com/CodeGather/flutter_ali_auth/master/screenshot/IMG_4173.PNG" alt="ios截图2" width="100"><img src="https://raw.githubusercontent.com/CodeGather/flutter_ali_auth/master/screenshot/IMG_4174.PNG" alt="ios截图3" width="100">
