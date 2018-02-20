//
//  AppDelegate+custom.m
//  hpd2
//
//  Created by Niall Cargill on 2/19/2018.
//

#import <Foundation/Foundation.h>
#import "AppDelegate+custom.h"

@implementation AppDelegate (custom)

- (BOOL)application:(UIApplication *)app openURL:(NSURL *)url options:(NSDictionary<UIApplicationOpenURLOptionsKey, id> *)options
{
    [[NSHTTPCookieStorage sharedHTTPCookieStorage] setCookieAcceptPolicy:NSHTTPCookieAcceptPolicyAlways];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    [defaults setValue:[url absoluteString] forKey:@"customUrlTemp"];
    
    [defaults synchronize];
    NSLog(@"%@", [[NSUserDefaults standardUserDefaults] dictionaryRepresentation]);
    
    return true;
}

@end
