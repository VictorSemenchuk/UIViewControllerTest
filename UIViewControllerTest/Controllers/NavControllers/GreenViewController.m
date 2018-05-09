//
//  GreenViewController.m
//  UIViewControllerTest
//
//  Created by Victor Macintosh on 09/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "GreenViewController.h"
#import "BlueViewController.h"

@interface GreenViewController ()

@end

@implementation GreenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setTitle:@"Green"];
    [[self view] setBackgroundColor:[UIColor greenColor]];
    
    UIBarButtonItem *rightButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Blue" style:UIBarButtonItemStyleDone target:self action:@selector(nextController:)];
    
    [[self navigationItem] setRightBarButtonItem:rightButtonItem];
    
    [rightButtonItem release];
}

- (void)nextController:(UIBarButtonItem *)sender {
    BlueViewController *nextVC = [[BlueViewController alloc] init];
    [[self navigationController] pushViewController:nextVC animated:true];
    [nextVC release];
}

@end
