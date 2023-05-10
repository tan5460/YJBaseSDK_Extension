//
//  UIButton+YJExtension.h
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/11/3.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIButton (YJExtension)

///设置纯色背景图
- (void)yj_setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state;

@end

NS_ASSUME_NONNULL_END
