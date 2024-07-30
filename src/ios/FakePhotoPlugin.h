#import <UIKit/UIKit.h>
#import <Cordova/CDVPlugin.h>

@interface FakePhotoPlugin: CDVPlugin
{}

- (void)isFakePhoto:(CDVInvokedUrlCommand*)command;
@end
