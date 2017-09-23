#import "FixIOSKeyboard.h"

#import <Cordova/CDVAvailability.h>

static BOOL hasAlreadyCachedKeyboard;

@implementation FixIOSKeyboard

- (void)pluginInitialize {
    NSLog(@"Initialize plugin FixIOSKeyboard");
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(finishLaunching:) name:UIApplicationDidFinishLaunchingNotification object:nil];
}

- (void)finishLaunching:(NSNotification *)notification
{
    // Put here the code that should be on the AppDelegate.m
    NSLog(@"Caching IOS Keyboard UX Fix");

    // Preloads keyboard so there's no lag on initial keyboard appearance.
    UITextField *lagFreeField = [[UITextField alloc] init];
    [self.webView addSubview:lagFreeField];
    [lagFreeField becomeFirstResponder];
    [lagFreeField resignFirstResponder];
    [lagFreeField removeFromSuperview];
}

@end
