//
//  DrawViewController.m
//  测试
//
//  Created by yanglin on 2020/4/24.
//  Copyright © 2020 Softisland. All rights reserved.
//

#import "DrawViewController.h"
#import "DrawView.h"

@interface DrawViewController ()

@end

@implementation DrawViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor colorWithWhite:0.9 alpha:1];

    DrawView *view = [[DrawView alloc] initWithFrame:CGRectMake(100, 100, 200.33333, 200)];
//    view.backgroundColor = [UIColor grayColor];
    [self.view addSubview:view];
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
