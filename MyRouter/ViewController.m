//
//  ViewController.m
//  MyRouter
//
//  Created by Rey on 2017/11/23.
//  Copyright © 2017年 Rey. All rights reserved.
//

#import "ViewController.h"
#define screen_wid [[UIScreen mainScreen] bounds].size.width
#define screen_hei [[UIScreen mainScreen] bounds].size.height
#import "RouterModel.h"
#import "QMediator.h"
@interface ViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    UITableView *table1;
    NSMutableArray *dataArr;
}
@end

@implementation ViewController
//+ (void)registerWithTitle:(NSString *)title handler:(UIViewController *(^)(void))handler
//{
//    if (!titleWithHandlers) {
//        titleWithHandlers = [[NSMutableDictionary alloc] init];
//        titles = [NSMutableArray array];
//    }
//    [titles addObject:title];
//    titleWithHandlers[title] = handler;
//}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.edgesForExtendedLayout = UIRectEdgeNone;
    [self createUI];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)createUI{
    dataArr = [NSMutableArray array];
    for(NSInteger i=0;i<20;i++){
        NSString *cStr = [NSString stringWithFormat:@"IAm%ld",i+1];
        NSString *cStr1 = [NSString stringWithFormat:@"%ld",i+1];
        RouterModel *mm = [[RouterModel alloc]init];
        mm.nameStr = cStr;
        mm.nid = cStr1;
        [dataArr addObject:mm];

    }
    table1 = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, screen_wid, screen_hei) style:UITableViewStylePlain];
    table1.delegate = self;
    table1.dataSource = self;
    [table1 registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];

    [self.view addSubview:table1];

}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return dataArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    RouterModel *mm = dataArr[indexPath.row];
    cell.textLabel.text = mm.nameStr;
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    if(indexPath.row == 0){
    RouterModel *mm = dataArr[indexPath.row];

    if([MGJRouter canOpenURL:@"SecViewController"]){
    [MGJRouter openURL:@"SecViewController" withUserInfo:@{@"model":mm} completion:^(id result) {
        NSLog(@"打开结果：%@",result);
    }];
    }else{
        NSLog(@"打不开");
    }
    }else if (indexPath.row == 3){
        if([MGJRouter canOpenURL:@"mgj://search"]){
            [MGJRouter openURL:@"mgj://search/human/bicycle?color=red&font=13" withUserInfo:@{} completion:^(id result) {
            }];
        }else{
            NSLog(@"注册失败");
        }
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
