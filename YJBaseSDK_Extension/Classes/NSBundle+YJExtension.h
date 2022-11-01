//
//  NSBundle+YJExtension.h
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/10/31.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSBundle (YJExtension)

+ (NSBundle *)bundleWithBundleName:(NSString *_Nullable)bundleName podName:(NSString *_Nullable)podName;

@end

NS_ASSUME_NONNULL_END
