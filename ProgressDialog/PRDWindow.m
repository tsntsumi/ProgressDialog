//
//  PRDWindow.m
//  ProgressDialog
//
//  Created by tsntsumi on 2014/08/24.
//  Copyright (c) 2014年 tsntsumi. All rights reserved.
//

#import "AppDelegate.h"
#import "PRDWindow.h"

@implementation PRDWindow

- (AppDelegate *)appDelegate {
    return (AppDelegate *)[NSApp delegate];
}

- (NSNumber *)percent {
    return [NSNumber numberWithInteger:(NSInteger)self.progressBar.doubleValue];
}

- (void)setPercent: (NSNumber *)value {
    [[self appDelegate] setProgress:value];
    self.progressBar.doubleValue = (double)[value integerValue];
}

- (NSNumber *)indeterminate {
    return [NSNumber numberWithBool:self.progressBar.indeterminate];
}

- (void)setIndeterminate: (NSNumber *)flag {
    [[self appDelegate] setIndeterminate: flag.boolValue];
    self.progressBar.indeterminate = flag.boolValue;
    if (flag.boolValue) {
        [[self appDelegate] startAnimation:self];
        [self.progressBar startAnimation:self];
    }
    else {
        [[self appDelegate] stopAnimation:self];
        [self.progressBar stopAnimation:self];
    }
}

- (NSString *)message {
    return self.messageLable.stringValue;
}

- (void)setMessage: (NSString *)string {
    self.messageLable.stringValue = string;
}

@end
