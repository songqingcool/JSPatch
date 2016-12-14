//
//  JSHotfixManager.h
//  JSPatch
//
//  Created by 宋庆功 on 2016/12/14.
//  Copyright © 2016年 思源. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface JSHotfixManager : NSObject

+ (JSHotfixManager *)sharedInstance;

// 开启热修复
- (void)startService;

@end
