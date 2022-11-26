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

#import "UserInfoViewController.h"
#import <AGConnectAuth/AGConnectAuth.h>

@interface UserInfoViewController ()

@property (weak, nonatomic) IBOutlet UILabel *uid;
@property (weak, nonatomic) IBOutlet UILabel *name;

@end

@implementation UserInfoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"User Info";
    
    self.uid.text = [AGCAuth getInstance].currentUser.uid;
    self.name.text = [AGCAuth getInstance].currentUser.displayName;
}

- (IBAction)logout:(id)sender {
    [[AGCAuth getInstance] signOut];
    [self.navigationController popViewControllerAnimated:YES];
}

@end
