//
//  SlideViewController.m
//  测试
//
//  Created by yanglin on 2020/1/2.
//  Copyright © 2020 Softisland. All rights reserved.
//

#import "SlideViewController.h"
#import "SlideRViewController.h"
#import <UIViewController+CWLateralSlide.h>

@interface SlideViewController ()
@property (nonatomic, strong) UIButton *showBtn;
@end

@implementation SlideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(10, 100, 100, 40)];
    btn.backgroundColor = [UIColor blueColor];
    [btn setTitle:@"show" forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(clickBtn) forControlEvents:UIControlEventTouchUpInside];
    self.showBtn = btn;
    [self.view addSubview:self.showBtn];
}

- (void)clickBtn {
    SlideRViewController *r = [SlideRViewController new];
    
    CWLateralSlideConfiguration *configuration = [CWLateralSlideConfiguration new];
    configuration.direction = CWDrawerTransitionFromRight;
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:r];
    
    [self cw_showDrawerViewController:nav animationType:CWDrawerAnimationTypeMask configuration:configuration];
}

@end
