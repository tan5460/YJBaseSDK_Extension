//
//  NSObject+YJExtension.h
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/10/31.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (YJExtension)

- (UIViewController *)yj_currentVisibleVC;
- (UIViewController *)yj_visibleVCFrom:(UIViewController *)fromVC;

@end

NS_ASSUME_NONNULL_END
