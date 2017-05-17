//
//  ZFClassViewController.m
//  ZFIOSPlatform
//
//  Created by 张木锋 on 2017/5/16.
//  Copyright © 2017年 COM.ZMF. All rights reserved.
//

#import "ZFClassViewController.h"
#import "ZFClassTableView.h"

#define KZFClassTableViewCellSectionID  @"KZFClassTableViewCellSectionID"
#define KZFClassTableViewCellRowID      @"KZFClassTableViewCellRowID"

@interface ZFClassViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) ZFClassTableView *classTableView;
@property (strong, nonatomic) NSMutableArray *sourceDataArr;  // 数据源数组
@property (strong, nonatomic) NSMutableArray *sectionDataArr; // 组数
@property (strong, nonatomic) NSMutableArray *rowDataArr;     // 每组行数
@property (strong, nonatomic) NSMutableArray *stateArr;       // 状态数组
@property (strong, nonatomic) NSMutableArray *nsDataArr; // NS
@property (strong, nonatomic) NSMutableArray *uiDataArr;     // UI
@end

@implementation ZFClassViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.sectionDataArr = [NSMutableArray arrayWithObjects:@"NS",@"UI",nil];
    self.sourceDataArr  = [NSMutableArray arrayWithObjects:@"NSObject", @"NSArray", @"NSMutableArray", @"NSDictionary", @"NSMutableDictionary",@"UITableView", @"UITableViewController", @"UICollectionView", @"UIScrollView",nil];

//    // 状态数组
//    self.stateArr = [NSMutableArray array];
//    
//    // 遍历所有数据源数组的model,把所有的状态置0
//    for (int i = 0; i < self.sourceDataArr.count; i++) {
//        [self.stateArr addObject:@"0"];
//    }
    
    self.classTableView = [[ZFClassTableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    [self.classTableView registerClass:[UITableViewCell class] forCellReuseIdentifier:KZFClassTableViewCellSectionID];
    self.classTableView.delegate = self;
    self.classTableView.dataSource = self;
    self.classTableView.rowHeight = 60;
    self.view = self.classTableView;
}
//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//    
//    return self.sectionDataArr.count;
//}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.sourceDataArr.count;
}
//- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
//{
//    return self.sectionDataArr[section];
//}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:KZFClassTableViewCellSectionID forIndexPath:indexPath];
    cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    cell.textLabel.text = self.sourceDataArr[indexPath.row];
    return cell;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
