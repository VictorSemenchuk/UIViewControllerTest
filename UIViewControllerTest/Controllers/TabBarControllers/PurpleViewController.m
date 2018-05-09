//
//  PurpleViewController.m
//  UIViewControllerTest
//
//  Created by Victor Macintosh on 09/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import "PurpleViewController.h"

@interface PurpleViewController ()

@end

@implementation PurpleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self setTitle:@"Purple"];
    [[self view] setBackgroundColor:[UIColor purpleColor]];
}

@end
