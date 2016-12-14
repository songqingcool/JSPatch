//
//  JSHotfixManager.m
//  JSPatch
//
//  Created by 宋庆功 on 2016/12/14.
//  Copyright © 2016年 思源. All rights reserved.
//

#import "JSHotfixManager.h"
#import "JPEngine.h"

@implementation JSHotfixManager

+ (JSHotfixManager *)sharedInstance
{
    static dispatch_once_t once;
    static JSHotfixManager *instance = nil;
    dispatch_once(&once, ^{
        instance = [[JSHotfixManager alloc]init];
    });
    return instance;
}

- (void)startService
{
    [JPEngine startEngine];
    NSString *sourcePath = [[NSBundle bundleWithIdentifier:@"JSPatch"] pathForResource:@"demo" ofType:@"js"];
    NSString *script = [NSString stringWithContentsOfFile:sourcePath encoding:NSUTF8StringEncoding error:nil];
    [JPEngine evaluateScript:script];
}

@end
