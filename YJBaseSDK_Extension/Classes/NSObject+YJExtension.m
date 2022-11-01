//
//  NSObject+YJExtension.m
//  YJBaseSDK_Extension
//
//  Created by YJ on 2022/10/31.
//

#import "NSObject+YJExtension.h"

@implementation NSObject (YJExtension)

- (UIViewController *)yj_currentVisibleVC {
    
    UIViewController *rootVC = [UIApplication sharedApplication].keyWindow.rootViewController;
    return [self yj_visibleVCFrom:rootVC];
}

- (UIViewController *)yj_visibleVCFrom:(UIViewController *)fromVC {
    UIViewController *currentVC = fromVC;
    //
    if (fromVC.presentedViewController) {
        currentVC = [self yj_visibleVCFrom:fromVC.presentedViewController];
    }
    
    if ([currentVC isKindOfClass:[UITabBarController class]]) {
        UITabBarController *tabbarVC = (UITabBarController *)currentVC;
        if (tabbarVC.selectedViewController) {
            currentVC = [self yj_visibleVCFrom:tabbarVC.selectedViewController];
        }
    } else if ([currentVC isKindOfClass:[UINavigationController class]]) {
        UINavigationController *naviVC = (UINavigationController *)currentVC;
        if (naviVC.topViewController) {
            currentVC = [self yj_visibleVCFrom:naviVC.topViewController];
        }
    }
    return currentVC;
}

@end
