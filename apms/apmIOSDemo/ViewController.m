//
// Copyright 2020. Huawei Technologies Co., Ltd. All rights reserved.
//
//    Licensed under the Apache License, Version 2.0 (the "License");
//    you may not use this file except in compliance with the License.
//    You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//    Unless required by applicable law or agreed to in writing, software
//    distributed under the License is distributed on an "AS IS" BASIS,
//    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//    See the License for the specific language governing permissions and
//    limitations under the License.
//

#import "ViewController.h"
#import "AGConnectAPM/AGConnectAPM.H"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton* sendNetworkRequestBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    sendNetworkRequestBtn.frame = CGRectMake(80, 100, 200, 40);
    [sendNetworkRequestBtn setTitle:@"Send Network Request" forState:UIControlStateNormal];
    [sendNetworkRequestBtn addTarget:self action:@selector(sendNetworkRequest) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:sendNetworkRequestBtn];
    
    UIButton* disableBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    disableBtn.frame = CGRectMake(80, 150, 200, 40);
    [disableBtn setTitle:@"APM Collection Off" forState:UIControlStateNormal];
    [disableBtn addTarget:self action:@selector(disableCollection) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:disableBtn];
    
    UIButton* enableBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    enableBtn.frame = CGRectMake(80, 200, 200, 40);
    [enableBtn setTitle:@"APM Collection On" forState:UIControlStateNormal];
    [enableBtn addTarget:self action:@selector(enableCollection) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:enableBtn];
}

- (void)sendNetworkRequest {
    NSURL *url = [NSURL URLWithString:@"https://developer.huawei.com/consumer/cn/"];
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *task = [session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error) {
        NSString* str = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        NSLog(@"result: %@", str);
    }];
    
    [task resume];
}

- (void)disableCollection {
    [[AGCAPM sharedInstance] enableCollection:NO];
}

- (void)enableCollection {
    [[AGCAPM sharedInstance] enableCollection:YES];
}

@end
