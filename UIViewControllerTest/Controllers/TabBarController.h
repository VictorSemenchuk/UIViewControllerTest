//
//  TabBarController.h
//  UIViewControllerTest
//
//  Created by Victor Macintosh on 09/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TabBarControllerDelegate

- (void)dismissTabBarControllerBy:(UIViewController *)sender;

@end

@interface TabBarController : UITabBarController

@end
