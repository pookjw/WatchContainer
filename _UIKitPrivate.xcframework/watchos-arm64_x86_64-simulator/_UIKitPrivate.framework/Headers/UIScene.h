#import <Foundation/Foundation.h>
#import <_UIKitPrivate/UIDefines.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

@class UIScene, UISceneSession, UISceneConnectionOptions;

NS_SWIFT_UI_ACTOR
@protocol UISceneDelegate <NSObject>
@optional
- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
