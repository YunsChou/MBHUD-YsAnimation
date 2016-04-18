//
//  ViewController.m
//  MBHUD+YsAnimation
//
//  Created by weiying on 16/2/3.
//  Copyright © 2016年 Yuns. All rights reserved.
//

#import "ViewController.h"
#import "MBProgressHUD+YsAnimation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [MBProgressHUD showAnimotionToView:self.view];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [MBProgressHUD hideHUDForView:self.view];
    });
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
