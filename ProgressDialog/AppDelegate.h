//
//  AppDelegate.h
//  ProgressDialog
//
//  Created by tsntsumi on 2014/08/24.
//  Copyright (c) 2014年 tsntsumi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

- (void)setProgress:(NSNumber *)fraction;
- (void)setIndeterminate:(BOOL)flag;
- (void)startAnimation:(id)sender;
- (void)stopAnimation:(id)sender;

@end

