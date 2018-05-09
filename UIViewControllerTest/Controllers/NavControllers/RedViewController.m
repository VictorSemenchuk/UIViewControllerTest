//
//  RedViewController.m
//  UIViewControllerTest
//
//  Created by Victor Macintosh on 09/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "RedViewController.h"
#import "GreenViewController.h"

@interface RedViewController ()

@end

@implementation RedViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [[self view] setBackgroundColor:[UIColor redColor]];
    [self setTitle:@"Red"];
    
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Green" style:UIBarButtonItemStyleDone target:self action:@selector(nextController:)];
    
    [[self navigationItem] setRightBarButtonItem:rightButtonItem];
    
    [rightButtonItem release];
}


- (void)nextController:(UIBarButtonItem *)sender {
    GreenViewController *nextVC = [[GreenViewController alloc] init];
    [[self navigationController] pushViewController:nextVC animated:true];
    [nextVC release];
}

@end
