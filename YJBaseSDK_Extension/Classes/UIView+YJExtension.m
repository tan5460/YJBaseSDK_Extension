//
//  UIView+YJExtension.m
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/10/27.
//

#import "UIView+YJExtension.h"
#import "UIColor+YJExtension.h"

@implementation UIView (YJExtension)

///将所有子视图设置随机背景色
- (void)yj_randomAllSubviewBackgroundColor {
#ifdef DEBUG
    for (UIView *subview in self.subviews) {
        subview.backgroundColor = [UIColor yj_randomColor];
        [subview yj_randomAllSubviewBackgroundColor];
    }
#endif
}

///根据当前bounds设置圆角
- (void)yj_setRectCornerWithCorners:(UIRectCorner)corners radius:(CGFloat)radius {
    [self yj_setRectCornerWithCorners:corners radius:radius frame:self.bounds];
}

///根据frame参数设置圆角
- (void)yj_setRectCornerWithCorners:(UIRectCorner)corners radius:(CGFloat)radius frame:(CGRect)frame {
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(0, 0, frame.size.width, frame.size.height) byRoundingCorners:corners cornerRadii:CGSizeMake(radius, radius)];
    CAShapeLayer *maskLayer = [[CAShapeLayer alloc] init];
    maskLayer.frame = frame;
    maskLayer.path = maskPath.CGPath;
    self.layer.mask = maskLayer;
    self.layer.contentsScale = [[UIScreen mainScreen] scale];
}

@end
