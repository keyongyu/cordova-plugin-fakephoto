#include <sys/types.h>
#include <sys/sysctl.h>
#include "TargetConditionals.h"

#import <Availability.h>

#import <Cordova/CDV.h>
#include <fakephoto/fakephoto.h>
#import "FakePhotoPlugin.h"

@implementation FakePhotoPlugin

enum GraphError{ no_error=0 , file_not_found=-1, bad_format=-2, no_photo_file=-3, internal_error=-4};

- (void)isFakePhoto:(CDVInvokedUrlCommand*)command
{
    if(command.arguments.count !=2){
        CDVPluginResult*    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
        [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
        return;
    }
    NSString* pbFile = [command.arguments objectAtIndex:0];
    NSString* photoFile = [command.arguments objectAtIndex:1];
    NSString* reply = isFakePhoto(pbFile, photoFile);
//    NSDictionary* dict= @{
//          @"isFakePhoto":@false,
//          @"probability":@0.99,
//          @"success":@true
//    };
    NSError* error=NULL;
    NSDictionary *dict= [NSJSONSerialization
                         JSONObjectWithData:[reply dataUsingEncoding:NSUTF8StringEncoding]
                         options:kNilOptions
                         error:&error];
    if(error){
        dict= @{
            //@"isFakePhoto":@(false),
            //@"probability":@0.0,
            @"success":@(false),
            @"errorMsg":[NSString stringWithFormat:@"not a json from native xcframework %@",reply],
            @"errorCode": @(GraphError::internal_error) 

        };
    }
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK
                messageAsDictionary:dict];

    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}
@end
