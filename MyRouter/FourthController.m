//
//  FourthController.m
//  MyRouter
//
//  Created by Rey on 2018/1/23.
//  Copyright © 2018年 Rey. All rights reserved.
//

#import "FourthController.h"

@interface FourthController ()

@end

@implementation FourthController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"自定义参数";
    self.view.backgroundColor = [UIColor magentaColor];
    // Do any additional setup after loading the view.
}
+ (void)load
{

//mgj://search/bicycle?color=red&font=13
    FourthController *detailViewController = [[FourthController alloc] init];
    [MGJRouter registerURLPattern:@"mgj://search/:a1/:a2" toHandler:^(NSDictionary *routerParameters) {
        UINavigationController *nav = (UINavigationController *)[UIApplication sharedApplication].keyWindow.rootViewController;
        [nav pushViewController:detailViewController animated:YES];
        NSLog(@"shoudaocanshu : %@",routerParameters);
    }];

}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
