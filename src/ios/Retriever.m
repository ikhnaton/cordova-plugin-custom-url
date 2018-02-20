//
//  Retriever
//  hpd2
//
//  Created by Niall Cargill on 2/19/2018.
//

#import <Foundation/Foundation.h>
#import <Cordova/CDVPlugin.h>
#import "Retriever.h"

@implementation Retriever: CDVPlugin

- (void)getValue:(CDVInvokedUrlCommand*)command
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults synchronize];
    
    NSString* value = [defaults valueForKey:@"customUrlTemp"];
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:value];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)clearValue:(CDVInvokedUrlCommand*)command
{
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults removeObjectForKey:@"customUrlTemp"];
    
    CDVPluginResult* pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"OK"];
    
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
