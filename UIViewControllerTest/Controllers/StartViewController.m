//
//  StartViewController.m
//  UIViewControllerTest
//
//  Created by Victor Macintosh on 09/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "StartViewController.h"
#import "RedViewController.h"
#import "NavigationController.h"
#import "TabBarController.h"

@interface StartViewController ()

@end

@implementation StartViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [[self view] setBackgroundColor:[UIColor whiteColor]];
    
    CGRect controlFrame = CGRectMake(0, 0, 250, 50);
    
    UILabel *label = [[UILabel alloc] initWithFrame:controlFrame];
    [label setCenter:CGPointMake([[self view] center].x, [[self view] center].y / 2)];
    [label setText:@"UIViewController Test App"];
    [label setFont:[UIFont fontWithName:@"System" size:20]];
    [label setTextAlignment:NSTextAlignmentCenter];
    [[self view] addSubview:label];
    
    UIButton *firstButton = [[UIButton alloc] initWithFrame:controlFrame];
    [firstButton setCenter:CGPointMake([[self view] center].x, [[self view] center].y - 5 - [firstButton frame].size.height)];
    [firstButton addTarget:self action:@selector(presentNavigationScreen:) forControlEvents:UIControlEventTouchUpInside];
    [firstButton setTitle:@"Test UINavigationController" forState:UIControlStateNormal];
    [firstButton setBackgroundColor:[UIColor redColor]];
    [[firstButton layer] setCornerRadius:10];
    [[self view] addSubview:firstButton];
    
    UIButton *secondButton = [[UIButton alloc] initWithFrame:controlFrame];
    [secondButton setCenter:CGPointMake([[self view] center].x, [[self view] center].y + 5)];
    [secondButton addTarget:self action:@selector(presentTabBarScreen:) forControlEvents:UIControlEventTouchUpInside];
    [secondButton setTitle:@"Test UITabBarController" forState:UIControlStateNormal];
    [secondButton setBackgroundColor:[UIColor blueColor]];
    [[secondButton layer] setCornerRadius:10];
    [[self view] addSubview:secondButton];
    
    [label release];
    [firstButton release];
    [secondButton release];
    
}

- (void)presentNavigationScreen:(UIButton *)sender {
    RedViewController *redVC = [[RedViewController alloc] init];
    NavigationController *navController = [[NavigationController alloc] initWithRootViewController:redVC];
    [self presentViewController:navController animated:true completion:^{
        NSLog(@"UINavigationController presented");
    }];
    
    [redVC release];
    [navController release];
}

- (void)presentTabBarScreen:(UIButton *)sender {
    TabBarController *tabBarController = [[TabBarController alloc] init];
    [self presentViewController:tabBarController animated:true completion:^{
        NSLog(@"UITabBarController presented");
    }];
    [tabBarController release];
}

@end
