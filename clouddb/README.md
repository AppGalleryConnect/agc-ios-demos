# CloudDB QuickStart

English | [中文](https://gitee.com/appgallery_connect/agc-ios-demos/tree/master/clouddb)

## Table of Contents

 * [Introduction](#Introduction)
 * [Getting Started](#getting-started)
 * [Result](#Result)
 * [License](#license)
 
## Introduction
This is a quick start sample developed using CloudDB APIs on iOS. 

## Getting Started

- Open this project by Xcode.

- Sign in to [AppGallery Connect](https://developer.huawei.com/consumer/en/service/josp/agc/index.html#/myApp) to create your app. 

- Go to **Auth Service** and enable the **HUAWEI ID** authentication mode.

- Go to **Cloud DB** and enable Cloud DB. Then import the object type in **CloudDBQuickStart_1.json** in the root directory of project. Alternatively, create an object type named **BookInfo**, and ensure that all fields must be the same as those in **BookInfo.java** in the project.

- Go to **Project settings** > **General information**, download the **agconnect-services.plist** file from the **App information** area, and copy it to the **app** directory.

- Run the **pod install** command to associate the relevant libraries.

- Run the sample on an iOS device or Xcode simulator. 

## Result

<img src="./screenshot.jpg" height="550" width="320" />

## License

The sample code is licensed under the [Apache License, version 2.0](https://www.apache.org/licenses/LICENSE-2.0).
