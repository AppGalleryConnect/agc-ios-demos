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
#import <AGConnectAppLinking/AGConnectAppLinking.h>

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *shortLink;
@property (weak, nonatomic) IBOutlet UILabel *longLink;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)create:(id)sender {
    AGCAppLinkingComponents *components = [[AGCAppLinkingComponents alloc] init];
    components.uriPrefix = @"https://example.drcn.agconnect.link";
    components.deepLink = @"https://www.example.com";
    components.iosBundleId = [[NSBundle mainBundle] bundleIdentifier];
    components.iosDeepLink = @"example://ios/detail";
    components.androidDeepLink = @"example://android/detail";
    components.androidPackageName = @"com.android.demo";
    components.campaignName = @"name";
    components.campaignMedium = @"App";
    components.campaignSource = @"AGC";
    components.socialTitle = @"Title";
    components.socialImageUrl = @"https://example.com/1.png";
    components.socialDescription = @"Description";
    
    self.longLink.text = [components buildLongLink].absoluteString;
    __weak typeof(self) weakSelf = self;
    [components buildShortLink:^(AGCShortAppLinking * _Nullable shortLinking, NSError * _Nullable error) {
        if (shortLinking) {
            weakSelf.shortLink.text = shortLinking.url.absoluteString;
        }
    }];
}

- (IBAction)openShortLink:(id)sender {
    NSURL *url = [NSURL URLWithString:self.shortLink.text];
    if (url) {
        [UIApplication.sharedApplication openURL:url options:[NSDictionary dictionary] completionHandler:nil];
    }
}

- (IBAction)openLongLink:(id)sender {
    NSURL *url = [NSURL URLWithString:self.longLink.text];
    if (url) {
        [UIApplication.sharedApplication openURL:url options:[NSDictionary dictionary] completionHandler:nil];
    }
}


@end
