//
//  AppDelegate.m
//  ProgressDialog
//
//  Created by tsntsumi on 2014/08/24.
//  Copyright (c) 2014年 tsntsumi. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;

@property (retain) NSProgressIndicator *dockProgressIndicator;

@end

@implementation AppDelegate
            
- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
    [NSApp activateIgnoringOtherApps:YES];
    // [self.window setCollectionBehavior: NSWindowCollectionBehaviorCanJoinAllSpaces];
    
    NSImageView *imageView = [[NSImageView alloc] init];
    imageView.image = [NSApp applicationIconImage];
    NSDockTile *dockTile = [NSApp dockTile];
    dockTile.contentView = imageView;
    self.dockProgressIndicator = [[NSProgressIndicator alloc] initWithFrame:NSMakeRect(0.0f, dockTile.size.height / 2.0f - 6.0f, dockTile.size.width, 10.0f)];
    self.dockProgressIndicator.style = NSProgressIndicatorBarStyle;
    self.dockProgressIndicator.indeterminate = NO;
    [imageView addSubview:_dockProgressIndicator];
    self.dockProgressIndicator.bezeled = YES;
    self.dockProgressIndicator.minValue = 0.0;
    self.dockProgressIndicator.maxValue = 100.0;
    self.dockProgressIndicator.hidden = NO;
    [self setProgress:@0];
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
    self.dockProgressIndicator = nil;
}

- (void)setProgress:(NSNumber *)fraction {
    self.dockProgressIndicator.doubleValue = fraction.doubleValue;
    [[NSApp dockTile] display];
}

- (void)setIndeterminate:(BOOL)flag {
    self.dockProgressIndicator.indeterminate = flag;
    [[NSApp dockTile] display];
}

- (void)startAnimation:(id)sender {
    [self.dockProgressIndicator startAnimation:sender];
    [[NSApp dockTile] display];
}

- (void)stopAnimation:(id)sender {
    [self.dockProgressIndicator stopAnimation:sender];
}

@end
