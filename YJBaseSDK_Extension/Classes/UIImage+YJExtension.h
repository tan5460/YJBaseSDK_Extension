//
//  UIImage+YJExtension.h
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/10/27.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIImage (YJExtension)


///生成一个纯色图片
+ (instancetype)yj_imageWithColor:(UIColor *)color size:(CGSize)size;

///渲染成指定颜色的图片
- (instancetype)yj_renderWithColor:(UIColor *)color;

///裁剪指定范围（超过原图片区域填补透明）
- (instancetype)yj_cropFillWithFrame:(CGRect)frame;

///获取pod库中的图片
+ (nullable UIImage *)imageNamed:(NSString *)name withPodName:(NSString *)podName;

@end

NS_ASSUME_NONNULL_END
