//
//  MBProgressHUD+YsAnimation.h
//  MBHUD+YsAnimation
//
//  Created by weiying on 16/2/3.
//  Copyright © 2016年 Yuns. All rights reserved.
//

#import "MBProgressHUD.h"

/** loading图片数组*/
#define AnimationImgsArr @[[UIImage imageNamed:@"loading_01"],[UIImage imageNamed:@"loading_02"],[UIImage imageNamed:@"loading_03"],[UIImage imageNamed:@"loading_04"],[UIImage imageNamed:@"loading_05"],[UIImage imageNamed:@"loading_06"]]

@interface MBProgressHUD (YsAnimation)

/**
 *  HUD显示在指定view上
 *
 *  @param images 图片数组
 *  @param title   显示的文字
 *  @param view   指定的view
 */
+ (void)showAnimationImages:(NSArray *)images title:(NSString *)title toView:(UIView *)view;
/**HUD从指定的view上移除*/
+ (void)hideHUDForView:(UIView *)view;
/**HUD从window上移除*/
+ (void)hideHUD;

/******************二次嵌套快捷方法********************/
/**将动画显示在指定view上*/
+ (void)showAnimotionToView:(UIView *)view;
/**将动画显示在窗口上*/
+ (void)showAnimotionToWidown;
@end
