//
//  WSViewController.m
//  BadgeNumTest
//
//  Created by panwj on 13-12-5.
//  Copyright (c) 2013年 Andy. All rights reserved.
//

#import "WSViewController.h"

@interface WSViewController ()

@end

@implementation WSViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [[UIApplication sharedApplication] cancelAllLocalNotifications];
    [[UIApplication sharedApplication] setApplicationIconBadgeNumber:0];
    
    UILocalNotification *notification=[[UILocalNotification alloc] init];
    if (notification!=nil) {
        NSDate *now=[NSDate new];
        notification.fireDate=[now dateByAddingTimeInterval:15];
        notification.timeZone=[NSTimeZone defaultTimeZone];
        notification.alertBody=@"定时推送通知！";
        notification.soundName = @"default";
        [notification setApplicationIconBadgeNumber:22];
        [[UIApplication sharedApplication] scheduleLocalNotification:notification];
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)scheduleNotification{
}

@end
