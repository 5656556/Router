//
//  BaseViewController.h
//  MyRouter
//
//  Created by Rey on 2017/11/23.
//  Copyright © 2017年 Rey. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MGJRouter.h"

//typedef UIViewController *(^ViewControllerHandler)(void);
//static NSMutableDictionary *titleWithHandlers;
//static NSMutableArray *titles;
@interface BaseViewController : UIViewController
@property (nonatomic, strong) NSDictionary *defaultParamaters;

@end
