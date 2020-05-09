//
//  MyHBDViewController.m
//  测试
//
//  Created by yanglin on 2020/5/9.
//  Copyright © 2020 Softisland. All rights reserved.
//

#import "MyHBDViewController.h"
#import <UIViewController+HBD.h>

@interface MyHBDViewController ()

@end

@implementation MyHBDViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    self.hbd_barAlpha = 0;
            
    UIButton *backBtn = [[UIButton alloc] initWithFrame:CGRectMake(0, [[UIApplication sharedApplication] statusBarFrame].size.height, 100, 44)];
    backBtn.backgroundColor = [UIColor grayColor];
    [backBtn addTarget:self action:@selector(clickBackBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:backBtn];
        
    UIButton *pushBtn = [[UIButton alloc] initWithFrame:CGRectMake(120, [[UIApplication sharedApplication] statusBarFrame].size.height, 100, 44)];
    pushBtn.backgroundColor = [UIColor grayColor];
    [pushBtn addTarget:self action:@selector(clickPushBtn) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:pushBtn];
}

- (void)clickBackBtn {
    NSLog(@"点击自定义返回按钮");
}

- (void)clickPushBtn {
    MyHBDViewController *vc = [MyHBDViewController new];
    [self.navigationController pushViewController:vc animated:YES];
}

@end
