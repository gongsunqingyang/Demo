//
//  SlideRViewController.m
//  测试
//
//  Created by yanglin on 2020/1/2.
//  Copyright © 2020 Softisland. All rights reserved.
//

#import "SlideRViewController.h"
#import <UIViewController+CWLateralSlide.h>

@interface SlideRViewController ()
@property (nonatomic, strong) UIButton *pushBtn;
@property (nonatomic, strong) UIButton *popBtn;
@end

@implementation SlideRViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    UIButton *btn0 = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 40)];
    btn0.backgroundColor = [UIColor blueColor];
    [btn0 setTitle:@"push" forState:UIControlStateNormal];
    [btn0 addTarget:self action:@selector(clickPushBtn) forControlEvents:UIControlEventTouchUpInside];
    self.pushBtn = btn0;
    [self.view addSubview:self.pushBtn];
    
    UIButton *btn1 = [[UIButton alloc] initWithFrame:CGRectMake(10, 150, 100, 40)];
    btn1.backgroundColor = [UIColor blueColor];
    [btn1 setTitle:@"pop" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(clickPopBtn) forControlEvents:UIControlEventTouchUpInside];
    self.popBtn = btn1;
    [self.view addSubview:self.popBtn];
    
}

- (void)clickPushBtn {
    SlideRViewController *r = [SlideRViewController new];
//    [self cw_pushViewController:r];
    [self.navigationController pushViewController:r animated:YES];
}

- (void)clickPopBtn {
    [self.navigationController popViewControllerAnimated:YES];
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
