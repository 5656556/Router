//
//  SecViewController.m
//  MyRouter
//
//  Created by Rey on 2017/11/23.
//  Copyright © 2017年 Rey. All rights reserved.
//

#import "SecViewController.h"
#import "ViewController.h"
#import "ThirdViewController.h"
@interface SecViewController ()

@end

@implementation SecViewController
+ (void)load{
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    NSLog(@"canshu：%@  %@",self.defaultParamaters,self.defaultParamaters[MGJRouterParameterCompletion]);
    // Do any additional setup after loading the view.
}

-(void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    if(self.defaultParamaters[MGJRouterParameterCompletion]){
        void (^completion)(id result) = self.defaultParamaters[MGJRouterParameterCompletion];
        completion(@"opopop");
    }
}
-(void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    if(self.defaultParamaters[MGJRouterParameterCompletion]){
        void (^completion)(id result) = self.defaultParamaters[MGJRouterParameterCompletion];
       completion(@"enter");
    }
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
