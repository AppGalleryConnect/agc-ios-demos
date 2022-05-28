## auth quickstart

English | [中文]()

 * [Introduction](#introduction)
 * [Environment Requirements](#environment-requirements)
 * [Getting Started](#getting-started)
 * [Technical Support](#technical-support)
 * [License](#license)

## Introduction

Auth Service integrates a client SDK and accesses our cloud service to build a secure and reliable user authentication system for your app.
Auth Service supports multiple authentication modes and is closely integrated with other serverless services, effectively protecting user data by defining simple rules.

## Environment Requirements

XCode 11.0 or later
iOS 9 or later
	
## Getting Started

1. Check whether you have a HUAWEI ID. If not, [register one](https://developer.huawei.com/consumer/en/doc/start/registration-and-verification-0000001053628148) and pass identity verification.
2. Use your account to sign in to [AppGallery Connect](https://developer.huawei.com/consumer/en/service/josp/agc/index.html#/), create an app, and set **Platform** to **iOS**.
3. Enable authentication modes.
  3.1 Sign in to AppGallery Connect, click **My projects**, and click a project that you want to enable Auth Service from the project list.
  3.2 Go to **Build** > **Auth Service**. If it is the first time that you use Auth Service, click **Enable now** in the upper right corner.
  3.3 Click **Enable** for each authentication mode you want to enable.
  3.4 Configure information required by each authentication mode by referring to the development guide.
4. Download the **agconnect-services.plist** file from AppGallery Connect, and copy this file to the directory of your Xcode project.


## Technical Support

If you have any questions about the sample code, try the following:
- Visit [Stack Overflow](https://stackoverflow.com/questions/tagged/appgallery-connect), submit your questions, and tag them with `appgallery`. Huawei experts will answer your questions.
- Go to **AppGallery** in the [HUAWEI Developer Forum](https://forums.developer.huawei.com/forumPortal/en/home?fid=0101188387844930001) and communicate with other developers.

If you encounter any issues when using the sample code, submit your [issues](https://github.com/AppGalleryConnect/agc-ios-demos/issues) or submit a [pull request](https://github.com/AppGalleryConnect/agc-ios-demos/pulls).

## License
The sample code is licensed under the [Apache License, version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
