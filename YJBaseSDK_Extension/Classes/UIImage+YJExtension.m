//
//  UIImage+YJExtension.m
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/10/27.
//

#import "UIImage+YJExtension.h"
#import "NSBundle+YJExtension.h"

@implementation UIImage (YJExtension)

///生成一个纯色图片
+ (instancetype)yj_imageWithColor:(UIColor *)color size:(CGSize)size {
    //
    NSAssert(color, @"color参数异常");
    NSAssert(size.width > 0 && size.height > 0, @"size参数异常");
    
    CGRect rect = CGRectMake(0, 0, size.width, size.height);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetFillColorWithColor(context, color.CGColor);
    CGContextFillRect(context, rect);
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    
    return image;
}

///渲染成指定颜色的图片
- (instancetype)yj_renderWithColor:(UIColor *)color {
    // 获取图片大小
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    // 创建位图绘图上下文
    UIGraphicsBeginImageContextWithOptions(self.size, NO, self.scale);
    // 获取位图绘图上下文并开始渲染操作
    CGContextRef context = UIGraphicsGetCurrentContext();
    [self drawInRect:rect];
    //
    CGContextSetFillColorWithColor(context, color.CGColor);
    // 纯色图片渲染的关键设置
    CGContextSetBlendMode(context, kCGBlendModeSourceAtop);
    // 全局渲染颜色
    CGContextFillRect(context, rect);
    
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}


///裁剪指定范围（超过原图片区域填补透明）
- (instancetype)yj_cropFillWithFrame:(CGRect)frame {
    //创建位图绘图上下文
    UIGraphicsBeginImageContextWithOptions(frame.size, NO, self.scale);
    //获取图片绘制位置
    CGRect rect = CGRectMake(-frame.origin.x, -frame.origin.y, self.size.width, self.size.height);
    //
    [self drawInRect:rect];
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return image;
}

+ (nullable UIImage *)imageNamed:(NSString *)name withPodName:(NSString *)podName {
    NSBundle *bundle = [NSBundle bundleWithBundleName:nil podName:podName];
    UIImage *image = [UIImage imageNamed:name inBundle:bundle compatibleWithTraitCollection:nil];
    return image;
}

@end
