//
//  NavigationController.m
//  UIViewControllerTest
//
//  Created by Victor Macintosh on 09/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end

@implementation NavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *dismissBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Dismiss" style:UIBarButtonItemStylePlain target:self action:@selector(dismiss)];
    
    CGFloat toolbarHeight = 50.0;
    CGRect toolbarFrame = CGRectMake(0, [[self view] frame].size.height - toolbarHeight, [[self view] frame].size.width, toolbarHeight);
    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:toolbarFrame];
    [toolbar setItems:[NSArray arrayWithObject:dismissBarButtonItem]];
    
    [[self view] addSubview:toolbar];
    
    [dismissBarButtonItem release];
    [toolbar release];
}

- (void)dismiss {
    [self dismissViewControllerAnimated:true completion:nil];
}

@end
