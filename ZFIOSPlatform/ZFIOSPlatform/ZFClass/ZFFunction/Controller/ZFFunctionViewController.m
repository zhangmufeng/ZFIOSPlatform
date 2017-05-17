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
@property (strong, nonatomic) ZFFunctionTableView *functionTableView;
@end

@implementation ZFFunctionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.dataSourceArr = @[@"ZFMap",
                           @"ZFPay",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data",
                           @"No Data"];
    self.functionTableView = [[ZFFunctionTableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.functionTableView.rowHeight = 60;
    [self.functionTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:kFunctionCellID];
    self.view = self.functionTableView;
    self.functionTableView.delegate = self;
    self.functionTableView.dataSource = self;
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
            } break;
        
        case 1: {
            
        } break;
            
        case 2: {
            
        } break;
        case 3:{
            
        } break;
        default:
            break;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
