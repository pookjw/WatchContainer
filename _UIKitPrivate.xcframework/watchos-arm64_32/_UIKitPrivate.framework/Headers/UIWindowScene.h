#import <_UIKitPrivate/UIScene.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

@class UIWindow;

NS_SWIFT_UI_ACTOR
@protocol UIWindowSceneDelegate <UISceneDelegate>
@optional
@property (nullable, nonatomic, strong) UIWindow *window;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
