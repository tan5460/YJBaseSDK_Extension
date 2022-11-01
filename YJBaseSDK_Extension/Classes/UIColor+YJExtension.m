//
//  UIColor+YJExtension.m
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/10/22.
//

#import "UIColor+YJExtension.h"

@implementation UIColor (YJExtension)

//MARK: - 随机颜色

+ (instancetype)yj_randomColor {
    return [self yj_randomColorWithAlpha:1];
}

+ (instancetype)yj_randomColorWithAlpha:(CGFloat)alpha {
    int R = (arc4random() % 256);
    int G = (arc4random() % 256);
    int B = (arc4random() % 256);
    return [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:alpha];
}

//MARK: - 十六进制数字颜色

+ (instancetype)yj_colorWithHex:(NSInteger)hexValue {
    return [UIColor yj_colorWithHex:hexValue alpha:1.0];
}

+ (instancetype)yj_colorWithHex:(NSInteger)hexValue alpha:(CGFloat)alpha {
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0 alpha:alpha];
}

//MARK: - 十六进制数字字符串颜色

+ (instancetype)yj_colorWithHexString:(NSString *)hexString {
    return [self yj_colorWithHexString:hexString alpha:1];
}

+ (instancetype)yj_colorWithHexString:(NSString *)hexString alpha:(CGFloat)alpha {
    //删除字符串中的空格
    NSString *cString = [[hexString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];

    //如果是0x开头的，那么截取字符串，字符串从索引为2的位置开始，一直到末尾
    if ([cString hasPrefix:@"0X"] || [cString hasPrefix:@"0x"]) {
        cString = [cString substringFromIndex:2];
    }
    //如果是#开头的，那么截取字符串，字符串从索引为1的位置开始，一直到末尾
    if ([cString hasPrefix:@"#"]) {
        cString = [cString substringFromIndex:1];
    }
    
    if ([cString length] != 6) {
        NSAssert(NO, @"颜色值字符串字符位数错误");
        return [UIColor clearColor];
    }
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    //r
    NSString *rString = [cString substringWithRange:range];
    //g
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    //b
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    // Scan values
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    return [UIColor colorWithRed:((float)r / 255.0f) green:((float)g / 255.0f) blue:((float)b / 255.0f) alpha:alpha];
}

@end
