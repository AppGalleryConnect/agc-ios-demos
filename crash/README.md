## crash quickstart

English | [中文](https://github.com/AppGalleryConnect/agc-demos/blob/main/iOS/Crash/README_ZH.md)

## Table of Contents

 * [Introduction](#introduction)
 * [Environment Requirements](#environment-requirements)
 * [Getting Started](#getting-started)
 * [Sample Code](#sample-Code)
 * [Technical Support](#technical-support)
 * [License](#license)

## Introduction

The AppGallery Connect Crash service provides a powerful yet lightweight solution to app crash problems. With the service, you can quickly detect, locate, and resolve app crashes (unexpected exits of apps), and have access to highly readable crash reports in real time, without the need to write any code.

## Environment Requirements

* A computer with Xcode installed for app development
* A device or simulator running iOS 9 or a later version

## Getting Started

1. Check whether you have a HUAWEI ID. If not, [register one](https://developer.huawei.com/consumer/en/doc/start/registration-and-verification-0000001053628148) and pass identity verification.
2. Use your account to sign in to [AppGallery Connect](https://developer.huawei.com/consumer/en/service/josp/agc/index.html#/), create an app, and set **Platform** to **iOS**.
3. Enable the Crash service. 
    3.1 Sign in to AppGallery Connect and click **My projects**.
    3.2 Find your project from the project list and click the app for which you need to enable the Crash service on the project card.
    3.3 Go to **Quality** > **Crash**. The Crash page is displayed. If you use this service for the first time, click **Enable now**.
    3.4 On the **Project access settings** page, set parameteres and click **Finish**.
4. Download the **agconnect-services.plist** file from AppGallery Connect and add it to your project.

## Sample Code

The Crash SDK supports crash simulation, exception simulation, crash collection switch, and some other functions.
Objective-C code: AGConnectCrashDemo/AGConnectCrashDemo/ViewController.m
Swift code: AGConnectCrashDemo/AGConnectCrashDemo-Swift/ViewController.swift


## Technical Support

If you have any questions about the sample code, try the following:  
- Visit [Stack Overflow](https://stackoverflow.com/questions/tagged/appgallery-connect), submit your questions, and tag them with `appgallery`. Huawei experts will answer your questions.  
- Go to **AppGallery** in the [HUAWEI Developer Forum](https://forums.developer.huawei.com/forumPortal/en/home?fid=0101188387844930001) and communicate with other developers.

If you encounter any issues when using the sample code, submit your [issues](https://github.com/AppGalleryConnect/agc-ios-demos/issues) or submit a [pull request](https://github.com/AppGalleryConnect/agc-ios-demos/pulls).

## License

The sample code is licensed under the [Apache License, version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
