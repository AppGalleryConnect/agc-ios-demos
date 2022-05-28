## app linking quickstart

English | [中文]()

## Table of Contents

 * [Introduction](#Introduction)
 * [Environment Requirements](#environment-requirements)
 * [Getting Started](#getting-started)
 * [Technical Support](#technical-support)
 * [License](#license)

## Introduction

App Linking allows you to create cross-platform links that can work as defined regardless of whether your app has been installed by a user. When a user taps the link on an Android or iOS device, the user will be redirected to the specified in-app content. If a user taps the link in a browser, the user will be redirected to the same content of the web version.

## Environment Requirements

* A computer with Xcode installed for app development
* A device or simulator running iOS 9 or a later version

## Getting Started

1. Check whether you have a HUAWEI ID. If not, [register one](https://developer.huawei.com/consumer/en/doc/start/registration-and-verification-0000001053628148) and pass identity verification.
2. Use your account to sign in to [AppGallery Connect](https://developer.huawei.com/consumer/en/service/josp/agc/index.html#/), create an app, and set **Platform** to **iOS**.
3. Enable App Linking(https://developer.huawei.com/consumer/en/doc/development/AppGallery-connect-Guides/agc-applinking-introduction-0000001054143215).
4. Download the **agconnect-services.plist** file from AppGallery Connect and copy this file to the directory of your Xcode project.
5. Create a link prefix in App Linking and set **uriPrefix** in the ViewController to the created link prefix.

## Technical Support

If you have any questions about the sample code, try the following:  
- Visit [Stack Overflow](https://stackoverflow.com/questions/tagged/appgallery-connect), submit your questions, and tag them with `appgallery`. Huawei experts will answer your questions.  
- Go to **AppGallery** in the [HUAWEI Developer Forum](https://forums.developer.huawei.com/forumPortal/en/home?fid=0101188387844930001) and communicate with other developers.

If you encounter any issues when using the sample code, submit your [issues](https://github.com/AppGalleryConnect/agc-ios-demos/issues) or submit a [pull request](https://github.com/AppGalleryConnect/agc-ios-demos/pulls).

## License

The sample code is licensed under the [Apache License, version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
