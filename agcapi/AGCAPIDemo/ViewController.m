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
#import <AGConnectAuth/AGConnectAuth.h>
#import "UserInfoViewController.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *items;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"AGCAPIDemo";
    [self.tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cellid"];
    
    // get supported auth providers
    NSArray *providers = [[AGCAuth getInstance] supportAuthProviders];
    NSLog(@"supportedAuthProviders %@", providers);
    _items = [NSMutableArray arrayWithCapacity:2];
    for (NSNumber *provider in providers) {
        switch (provider.integerValue) {
            case AGCAuthProviderTypeApple:
                [_items addObject:@"loginWithApple"];
                break;
            default:
                break;
        }
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cellid"];
    cell.textLabel.text = _items[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSString *item = _items[indexPath.row];
    #pragma clang diagnostic push
    #pragma clang diagnostic ignored "-Warc-performSelector-leaks"
    if ([self respondsToSelector:NSSelectorFromString(item)]) {
        [self performSelector:NSSelectorFromString(item)];
    }
    #pragma clang diagnostic pop
}

- (void)loginWithApple {
    [[[[AGCAuth getInstance] signIn:AGCAuthProviderTypeApple controller:self] addOnSuccessCallback:^(AGCSignInResult * _Nullable result) {
        NSLog(@"success %@", result);
        // show user info
        UIStoryboard *story = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
        UserInfoViewController *viewController = [story instantiateViewControllerWithIdentifier:@"UserInfo"];
        [self.navigationController pushViewController:viewController animated:YES];
    }] addOnFailureCallback:^(NSError * _Nonnull error) {
        NSLog(@"failed %@", error);
    }];
}

@end
