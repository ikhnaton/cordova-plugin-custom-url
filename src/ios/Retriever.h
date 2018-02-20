#import <Cordova/CDVPlugin.h>

@interface Retriever : CDVPlugin

- (void)getValue:(CDVInvokedUrlCommand*)command;
- (void)clearValue:(CDVInvokedUrlCommand*)command;

@end

