//
//  AppDelegate.m
//  rdar14595036
//
//  Created by Manuel "StuFF mc" Carrasco Molina on 20/11/13.
//  Copyright (c) 2013 Manuel "StuFF mc" Carrasco Molina. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (weak) IBOutlet WebView *webView;
@property (weak) IBOutlet NSButton *button;
@property (weak) IBOutlet NSTextField *label;

@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    self.webView.mainFrameURL = [[NSBundle mainBundle] pathForResource:@"index" ofType:@"html"];
}

- (IBAction)kiosk:(id)sender {
    
    
//    NSApplicationPresentationDefault                    = 0,
//    NSApplicationPresentationAutoHideDock               = (1 <<  0),
//    NSApplicationPresentationHideDock                   = (1 <<  1),
//    NSApplicationPresentationAutoHideMenuBar            = (1 <<  2),
//    NSApplicationPresentationHideMenuBar                = (1 <<  3),
//    NSApplicationPresentationDisableAppleMenu           = (1 <<  4),
//    NSApplicationPresentationDisableProcessSwitching    = (1 <<  5),
//    NSApplicationPresentationDisableForceQuit           = (1 <<  6),
//    NSApplicationPresentationDisableSessionTermination  = (1 <<  7),
//    NSApplicationPresentationDisableHideApplication     = (1 <<  8),
//    NSApplicationPresentationDisableMenuBarTransparency = (1 <<  9)
//    NSApplicationPresentationFullScreen                 = (1 << 10),
//    NSApplicationPresentationAutoHideToolbar            = (1 << 11)

    NSUInteger presentationOptions = 0;
    if ([NSApp presentationOptions]) {
        self.button.title = @"NSApplicationPresentationAutoHideDock | DisableProcessSwitching";
    } else {
        presentationOptions = NSApplicationPresentationAutoHideDock|NSApplicationPresentationDisableProcessSwitching;
        self.button.title = @"NSApplicationPresentationDefault";
    }
    [NSApp setPresentationOptions:presentationOptions];
    [self showPresentationOptions];
}

- (void)showPresentationOptions
{
    _window.title = [NSString stringWithFormat:@"rdar14595036 (presentationOptions: %ld)", [NSApp presentationOptions]];
    NSLog(@"%@", _window.title);
}

- (void)windowDidBecomeKey:(NSNotification *)notification
{
    [self showPresentationOptions];
}

@end
