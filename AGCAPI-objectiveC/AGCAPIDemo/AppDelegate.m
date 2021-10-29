//
//  Copyright (c) Huawei Technologies Co., Ltd. 2020. All rights reserved
//

#import "AppDelegate.h"
#import <AGConnectCore/AGConnectCore.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [AGCInstance startUp];
    
    return YES;
}


@end
