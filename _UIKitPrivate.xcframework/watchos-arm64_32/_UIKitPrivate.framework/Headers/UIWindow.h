#import <_UIKitPrivate/UIView.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

@class UIWindowScene, UIViewController;

UIKIT_EXTERN NS_SWIFT_UI_ACTOR
@interface UIWindow : UIView
- (instancetype)initWithWindowScene:(UIWindowScene *)windowScene NS_DESIGNATED_INITIALIZER;
@property (nullable, nonatomic, strong) UIViewController *rootViewController;
- (void)makeKeyAndVisible;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
