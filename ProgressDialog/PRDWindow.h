//
//  PRDWindow.h
//  ProgressDialog
//
//  Created by tsntsumi on 2014/08/24.
//  Copyright (c) 2014年 tsntsumi. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface PRDWindow : NSWindow

@property (weak) IBOutlet NSTextField *messageLable;
@property (weak) IBOutlet NSProgressIndicator *progressBar;

@end
