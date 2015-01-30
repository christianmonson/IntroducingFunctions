//
//  AppDelegate.m
//  IntroducingFuctions-Objc
//
//  Created by Joshua Howland on 8/14/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {

    NSString *myName;
    myName = @"Christian";
    [self countDownTillIntroduction:4];
    [self introductions:myName];
    
    return YES;
}

- (void)introductions:(NSString *)name {
    
    NSString *introduction = [NSString stringWithFormat:@"my name is %@", name];
    NSString *japaneseIntroduction = [name stringByAppendingString:@" to moushimasu"];
    NSLog(@"%@", introduction);
    NSLog(@"%@", japaneseIntroduction);
    
}

- (void)countDownTillIntroduction:(int)numberOfDays; {

    if (numberOfDays == 0){
    
    NSLog(@"The time has come.");
    
    } else {
        
        NSLog(@"%d days until introductions", numberOfDays);
    
        int oneLessDay;
        oneLessDay = numberOfDays - 1;
        [self countDownTillIntroduction:oneLessDay];
    }
}



@end
