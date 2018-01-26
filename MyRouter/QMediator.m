//
//  QMediator.m
//  MyRouter
//
//  Created by Rey on 2018/1/23.
//  Copyright © 2018年 Rey. All rights reserved.
//

#import "QMediator.h"
#import "MGJRouter.h"
#import "BaseViewController.h"
@implementation QMediator


+ (void)load{
    NSArray *vcArray = @[@"SecViewController",@"ThirdViewController"];
    for(NSInteger i=0;i<vcArray.count;i++){
        Class objClass = NSClassFromString(vcArray[i]);
    [MGJRouter registerURLPattern:vcArray[i] toHandler:^(NSDictionary *routerParameters) {
        BaseViewController *vc = [[objClass alloc] init];
        vc.defaultParamaters = routerParameters;
        UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
        [nav pushViewController:vc animated:YES];
    }];
    }
}




@end
