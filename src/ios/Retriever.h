#import <Cordova/CDVPlugin.h>

@interface Retriever : CDVPlugin

- (void)getPrefValue:(CDVInvokedUrlCommand*)command;
- (void)clearValue:(CDVInvokedUrlCommand*)command;

@end

