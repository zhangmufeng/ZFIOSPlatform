//
//  ZFFunctionViewController.m
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/16.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import "ZFFunctionViewController.h"
#import "ZFFunctionTableView.h"
#import "ZFMapViewController.h"

#define kFunctionCellID  @"FunctionCellID"

@interface ZFFunctionViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) NSArray *dataSourceArr;

@end

@implementation ZFFunctionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSourceArr = @[@"地图", @"支付",@"没有",@"没有",@"没有",@"没有",@"没有",@"没有",@"没有",@"没有",@"没有",@"没有",@"没有",@"没有",@"没有",@"没有"];
    ZFFunctionTableView *functionTableView = [[ZFFunctionTableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    functionTableView.rowHeight = 60;
    [functionTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kFunctionCellID];
    self.view = functionTableView;
    functionTableView.delegate = self;
    functionTableView.dataSource = self;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSourceArr.count;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kFunctionCellID forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.dataSourceArr[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    switch (indexPath.row) {
            
        case 0: {
            ZFMapViewController *mapViewController = [ZFMapViewController new];
            mapViewController.hidesBottomBarWhenPushed = YES;
            [self.navigationController pushViewController:mapViewController animated:YES];
            break;
        }
        case 1:
            
            break;
            
        case 2:
            
            break;
        case 3:
            
            break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
