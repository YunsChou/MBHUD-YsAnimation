//
//  MBProgressHUD+YsAnimation.m
//  MBHUD+YsAnimation
//
//  Created by weiying on 16/2/3.
//  Copyright © 2016年 Yuns. All rights reserved.
//

#import "MBProgressHUD+YsAnimation.h"


@implementation MBProgressHUD (YsAnimation)

+ (void)showAnimationImages:(NSArray *)images title:(NSString *)title toView:(UIView *)view
{
    if (view == nil){
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    //设置显示动画的imageview
    UIImageView *actionImage = [[UIImageView alloc] init];
    actionImage.frame = CGRectMake(0, 0, 100, 100);
    [actionImage setAnimationImages:images];
    //设置每张图片动画间隔时间
    [actionImage setAnimationDuration:images.count * 0.1];
    [actionImage startAnimating];
    
    //创建HUD
    MBProgressHUD *HUD = [MBProgressHUD showHUDAddedTo:view animated:YES];
    //设置蒙版
    HUD.dimBackground = YES;
    //自定view
    HUD.customView = actionImage;
    //设置显示的文字
    HUD.labelText = title;
    //设置显示文字的颜色
    HUD.labelColor = [UIColor blackColor];
    //设置中间显示区域的透明度为完全透明
    HUD.opacity = 0.0;
    //设置显示的模式
    HUD.mode = MBProgressHUDModeCustomView;
    //设置显示的动画
    HUD.animationType = MBProgressHUDAnimationZoomIn;
    //显示
    [HUD show:YES];
}

+ (void)hideHUDForView:(UIView *)view
{
    if (view == nil){
        view = [[UIApplication sharedApplication].windows lastObject];
    }
    [self hideHUDForView:view animated:YES];
}

+ (void)hideHUD
{
    [self hideHUDForView:nil];
}


/******************二次嵌套快捷方法********************/
+ (void)showAnimotionToView:(UIView *)view
{
    [self showAnimationImages:AnimationImgsArr title:@"努力加载中..." toView:view];
}

+ (void)showAnimotionToWidown
{
    [self showAnimotionToView:nil];
}
@end
