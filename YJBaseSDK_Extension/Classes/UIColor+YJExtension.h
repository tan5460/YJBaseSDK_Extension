//
//  UIColor+YJExtension.h
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/10/22.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (YJExtension)

+ (instancetype)yj_randomColor;
+ (instancetype)yj_randomColorWithAlpha:(CGFloat)alpha;

+ (instancetype)yj_colorWithHex:(NSInteger)hexValue;
+ (instancetype)yj_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha;

+ (instancetype)yj_colorWithHexString:(NSString *)hexString;
+ (instancetype)yj_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha;

@end

NS_ASSUME_NONNULL_END
