/*
 * Copyright (c) Huawei Technologies Co., Ltd. 2020-2022. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#import <AGConnectDatabase/AGConnectDatabase.h>

NS_ASSUME_NONNULL_BEGIN

@interface BookInfo : AGCCloudDBObject
@property (nonatomic, strong) NSNumber<AGCInt> *id;
@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, copy) NSString *author;
@property (nonatomic, strong) NSNumber<AGCDouble> *price;
@property (nonatomic, copy) NSString *publisher;
@property (nonatomic, strong) NSDate *publishTime;
@property (nonatomic, strong) NSNumber<AGCBool> *shadowFlag;
@end

NS_ASSUME_NONNULL_END