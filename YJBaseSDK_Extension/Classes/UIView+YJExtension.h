//
//  UIView+YJExtension.h
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/10/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (YJExtension)

///将所有子视图设置随机背景色
- (void)yj_randomAllSubviewBackgroundColor;

///根据当前bounds设置圆角
- (void)yj_setRectCornerWithCorners:(UIRectCorner)corners radius:(CGFloat)radius;

///根据frame参数设置圆角
- (void)yj_setRectCornerWithCorners:(UIRectCorner)corners radius:(CGFloat)radius frame:(CGRect)frame;



@end

NS_ASSUME_NONNULL_END
