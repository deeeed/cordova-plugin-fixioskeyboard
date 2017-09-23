#import <Cordova/CDVPlugin.h>
#import <UIKit/UIKit.h>

@interface FixIOSKeyboard : CDVPlugin {
}

// The hooks for our plugin commands
- (void)echo:(CDVInvokedUrlCommand *)command;
- (void)cacheKeyboard:(CDVInvokedUrlCommand *)command;

@end
