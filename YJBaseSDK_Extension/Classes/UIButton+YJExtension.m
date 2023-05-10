//
//  UIButton+YJExtension.m
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/11/3.
//

#import "UIButton+YJExtension.h"
#import "UIImage+YJExtension.h"

@implementation UIButton (YJExtension)

- (void)yj_setBackgroundColor:(UIColor *)backgroundColor forState:(UIControlState)state {
    [self setBackgroundImage:[UIImage yj_imageWithColor:backgroundColor size:CGSizeMake(1, 1)] forState:state];
}

@end
