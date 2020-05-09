//
//  InstrinsicViewController.m
//  测试
//
//  Created by yanglin on 2019/11/27.
//  Copyright © 2019 Softisland. All rights reserved.
//

#import "IntrinsicViewController.h"
#import "IntrinsicTableView.h"

@interface IntrinsicViewController () <UITableViewDataSource, UITableViewDelegate>
@property (nonatomic, strong) IntrinsicTableView *tableView;
@property (nonatomic, strong) NSArray *dataSource;
@end

@implementation IntrinsicViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.tableView];
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Reload" style:UIBarButtonItemStylePlain target:self action:@selector(reloadData)];
    [self reloadData];
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    CGRect tableViewFrame = CGRectMake(0, 0, self.view.bounds.size.width, self.tableView.contentSize.height + self.tableView.contentInset.top);
    self.tableView.frame = tableViewFrame;
}

- (void)reloadData {
    NSInteger count = arc4random()%10;
    NSMutableArray *dataSource = [NSMutableArray array];
    for (int i = 0; i < count; i++) {
        [dataSource addObject:@(i)];
    }
    self.dataSource = dataSource;
    [self.tableView reloadData];
    [self.view setNeedsLayout];
}

#pragma mark - UITableViewDataSource, UITableViewDelegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataSource.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"UITableViewCell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"UITableViewCell"];
    }
    cell.textLabel.text = [NSString stringWithFormat:@"row %@", self.dataSource[indexPath.row]];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    Class class;
    switch (indexPath.row) {
        case 0: {
            class = NSClassFromString(@"InstrinsicViewController");
        }
            break;
            
        default:
            break;
    }
    
    UIViewController *controller = [class new];
    [self.navigationController pushViewController:controller animated:YES];
}

#pragma mark - Getter
- (IntrinsicTableView *)tableView {
    if (!_tableView) {
        _tableView = [IntrinsicTableView new];
        _tableView.backgroundColor = [UIColor blueColor];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

@end
