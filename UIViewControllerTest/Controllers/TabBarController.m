//
//  TabBarController.m
//  UIViewControllerTest
//
//  Created by Victor Macintosh on 09/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "TabBarController.h"
#import "YellowViewController.h"
#import "OrangeViewController.h"
#import "PurpleViewController.h"

@interface TabBarController () <TabBarControllerDelegate>

@end

@implementation TabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    YellowViewController *firstVC = [[YellowViewController alloc] init];
    [firstVC setTabBarItem:[[[UITabBarItem alloc] initWithTitle:@"Yellow" image:[UIImage imageNamed:@"First"] tag:0] autorelease]];
    [firstVC setDelegate:self];
    
    OrangeViewController *secondVC = [[OrangeViewController alloc] init];
    [secondVC setTabBarItem:[[[UITabBarItem alloc] initWithTitle:@"Orange" image:[UIImage imageNamed:@"Second"] tag:1] autorelease]];
    [secondVC setDelegate:self];
    
    PurpleViewController *thirdVC = [[PurpleViewController alloc] init];
    [thirdVC setTabBarItem:[[[UITabBarItem alloc] initWithTitle:@"Purple" image:[UIImage imageNamed:@"Third"] tag:2] autorelease]];
    [thirdVC setDelegate:self];
    
    [self setViewControllers:[NSArray arrayWithObjects:firstVC, secondVC, thirdVC, nil]];
    
    [firstVC release];
    [secondVC release];
    [thirdVC release];
}

- (void)dismissTabBarControllerBy:(UIViewController *)sender {
    [self dismissViewControllerAnimated:true completion:^{
        NSLog(@"TabBarController was dismissed by %@", sender);
    }];
}

@end
