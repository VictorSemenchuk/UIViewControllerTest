//
//  BaseTabController.h
//  UIViewControllerTest
//
//  Created by Victor Macintosh on 09/05/2018.
//  Copyright © 2018 Victor Semenchuk. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TabBarController.h"

@interface BaseTabController : UIViewController

@property (weak, nonatomic) id <TabBarControllerDelegate> delegate;

@end
