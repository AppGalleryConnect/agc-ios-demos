## app linking quickstart

中文 | [English]()

## 目录

- [简介](#简介)
- [环境要求](#环境要求)
- [快速入门](#快速入门)
- [技术支持](#技术支持)
- [授权许可](#授权许可)

## 简介
AppLinking是一种不管应用是否已经安装都可以按照所需方式工作的跨平台链接，链接的目标内容可以是您想要推广的产品优惠活动，也可以是用户之间可以互相分享的应用原生内容。您可以创建AppLinking后将链接地址直接发送给用户，或者由用户在应用中动态生成AppLinking并分享给其他用户，接收到AppLinking的用户点击链接后即可跳转到链接指定的内容。

## 环境要求

* 在使用quickstart 之前，开发者需要配置好iOS开发环境
* 一台iOS设备或者模拟器，需要支持iOS 9及以上版本 

## 快速入门

在运行quickstart前，您需要
1、如果没有华为开发者联盟帐号，需要先[注册账号](https://developer.huawei.com/consumer/en/doc/start/registration-and-verification-0000001053628148)并通过实名认证。
2、使用申请的帐号登录[AppGallery Connect](https://developer.huawei.com/consumer/cn/service/josp/agc/index.html#/)网站创建应用，平台选择“iOS”。
3、开启[AppLinking服务](https://developer.huawei.com/consumer/cn/doc/development/AppGallery-connect-Guides/agc-applinking-introduction-0000001054143215)。
4、在AppGallery Connect 网站上下载agconnect-services.plist 文件，并拷贝agconnect-services.plist文件到Xcode工程目录下。
5、在AGC控制台上创建链接前缀，将链接前缀复制替换至ViewController中的`uriPrefix`字段。

## 技术支持

如果您对使用AppGallery Connect示例代码有疑问，请尝试：

- 开发过程遇到问题上[Stack Overflow](https://stackoverflow.com/questions/tagged/appgallery-connect)，在`appgallery`标签下提问，有华为研发专家在线一对一解决您的问题。
- 到[华为开发者论坛](https://developer.huawei.com/consumer/cn/forum/blockdisplay?fid=18) AppGallery Connect板块与其他开发者进行交流。

如果您在尝试示例代码中遇到问题，请向仓库提交[issue](https://github.com/AppGalleryConnect/agc-ios-demos/issues)，也欢迎您提交[Pull Request](https://github.com/AppGalleryConnect/agc-ios-demos/pulls)。

## 授权许可
该示例代码经过[Apache 2.0 授权许可](http://www.apache.org/licenses/LICENSE-2.0)。
