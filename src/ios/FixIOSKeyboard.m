#import "FixIOSKeyboard.h"

#import <Cordova/CDVAvailability.h>

static BOOL hasAlreadyCachedKeyboard;

@implementation MyCordovaPlugin

- (void)pluginInitialize {
}

- (void)echo:(CDVInvokedUrlCommand *)command {
  NSString* phrase = [command.arguments objectAtIndex:0];
  NSLog(@"%@", phrase);
}

- (void)cacheKeyboard:(CDVInvokedUrlCommand *)command {

  NSLog(@"Caching IOS Keyboard UX Fix");
  UITextField *field = [UITextField new];
  [[[[UIApplication sharedApplication] windows] lastObject] addSubview:field];
  [field becomeFirstResponder];
  [field resignFirstResponder];
  [field removeFromSuperview];

  if(! hasAlreadyCachedKeyboard) {
    NSLog(@"Keyboard has already been cached");
  }
  hasAlreadyCachedKeyboard = YES;

  NSString *result = @"this is the result";

  CDVPluginResult *result = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:result];
  [self.commandDelegate sendPluginResult:result callbackId:command.callbackId];
}

@end
