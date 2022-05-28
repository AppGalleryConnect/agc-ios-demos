# crash quickstart

中文 | [English](https://github.com/AppGalleryConnect/agc-demos/blob/main/iOS/Crash/README.md)


## 目录

- [简介](#简介)
- [环境要求](#环境要求)
- [快速入门](#快速入门)
- [示例代码](#示例代码)
- [技术支持](#技术支持)
- [授权许可](#授权许可)  


## 简介

崩溃服务提供轻量级崩溃分析服务，零代码快速集成，帮助您了解版本质量、对影响应用质量的崩溃性问题进行快速跟踪定位、评估问题的影响范围。


## 环境要求

* 在使用quickstart 之前，开发者需要配置好iOS开发环境
* 一台iOS设备或者模拟器，需要支持iOS 9及以上版本 

## 快速入门

在运行quickstart前，您需要
1、如果没有华为开发者联盟帐号，需要先[注册账号](https://developer.huawei.com/consumer/en/doc/start/registration-and-verification-0000001053628148)并通过实名认证。
2、使用申请的帐号登录[AppGallery Connect](https://developer.huawei.com/consumer/cn/service/josp/agc/index.html#/)网站创建应用，平台选择“iOS”。
3、启动崩溃服务：
      3.1 登录AppGallery Connect，点击“我的项目”，
      3.2 在项目列表中找到您的项目，在项目下的应用列表中选择您需要开通崩溃服务的应用。
      3.3 选择“质量 > 崩溃”，进入崩溃服务的页面。如果首次使用崩溃服务，点击“启动分析服务”开通分析服务。
      3.4 在“项目接入设置”页面，配置完相关设置后点击“完成”，开通华为分析服务成功。
4、在AppGallery Connect 网站上下载agconnect-services.plist 文件，并添加到工程中。

## 示例代码

Crash SDK支持崩溃模拟、异常模拟和崩溃收集开关设置
Objective-C代码: AGConnectCrashDemo/AGConnectCrashDemo/ViewController.m
Swift代码: AGConnectCrashDemo/AGConnectCrashDemo-Swift/ViewController.swift


## 技术支持

如果您对使用AppGallery Connect示例代码有疑问，请尝试：
- 开发过程遇到问题上[Stack Overflow](https://stackoverflow.com/questions/tagged/appgallery-connect)，在`appgallery-connect`标签下提问，有华为研发专家在线一对一解决您的问题。
- 到[华为开发者论坛](https://developer.huawei.com/consumer/cn/forum/block/ag-connect) AppGallery Connect板块与其他开发者进行交流。

如果您在尝试示例代码中遇到问题，请向仓库提交[issue](https://github.com/AppGalleryConnect/agc-ios-demos/issues)，也欢迎您提交[Pull Request](https://github.com/AppGalleryConnect/agc-ios-demos/pulls)。

## 授权许可

该示例代码经过[Apache 2.0 授权许可](https://www.apache.org/licenses/LICENSE-2.0)。
