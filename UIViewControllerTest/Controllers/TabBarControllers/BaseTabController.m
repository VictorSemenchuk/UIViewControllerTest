//
//  BaseTabController.m
//  UIViewControllerTest
//
//  Created by Victor Macintosh on 09/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "BaseTabController.h"

@interface BaseTabController ()

@end

@implementation BaseTabController

- (void)loadView {
    NSLog(@"TabBarItemController | loadView");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"TabBarItemController | viewDidLoad");
    
    UIButton *button = [[UIButton alloc] initWithFrame:CGRectMake(0, 0, 250, 70)];
    [button setCenter:[[self view] center]];
    [button setTitle:@"Dismiss TabBarController" forState:UIControlStateNormal];
    [button setBackgroundColor:[UIColor greenColor]];
    [[button layer] setCornerRadius:10];
    [button addTarget:self action:@selector(dismissTabBarController:) forControlEvents:UIControlEventTouchUpInside];
    [[self view] addSubview:button];
    
    [button release];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    NSLog(@"TabBarItemController | viewWillAppear");
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    NSLog(@"TabBarItemController | viewDidAppear");
}

- (void)viewWillLayoutSubviews {
    [super viewWillLayoutSubviews];
    NSLog(@"TabBarItemController | viewWillLayoutSubviews");
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    NSLog(@"TabBarItemController | viewDidLayoutSubviews");
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
    NSLog(@"TabBarItemController | viewWillDisappear");
}

- (void)viewDidDisappear:(BOOL)animated {
    [super viewDidDisappear:animated];
    NSLog(@"TabBarItemController | viewDidDisappear");
}

- (void)dismissTabBarController:(UIButton *)sender {
    [[self delegate] dismissTabBarControllerBy:self];
}


@end
