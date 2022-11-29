//
//  Copyright (c) Huawei Technologies Co., Ltd. 2020. All rights reserved
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
