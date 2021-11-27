//
//  Copyright (c) Huawei Technologies Co., Ltd. 2020. All rights reserved
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
