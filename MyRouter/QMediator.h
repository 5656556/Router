//
//  QMediator.h
//  MyRouter
//
//  Created by Rey on 2018/1/23.
//  Copyright © 2018年 Rey. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef UIViewController *(^ViewControllerHandler)(id);
//static NSMutableDictionary *titleWithHandlers;
static NSMutableArray *titles;

@interface QMediator : NSObject
@property (nonatomic,strong)NSMutableDictionary *titleWithHandlers;
@property (nonatomic) SEL selectedSelector;

@end
