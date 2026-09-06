#import <_UIKitPrivate/UIResponder.h>
#import <_UIKitPrivate/UIView.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

UIKIT_EXTERN NS_SWIFT_UI_ACTOR
@interface UIViewController : UIResponder
@property (null_resettable, nonatomic, strong) UIView *view;
- (void)viewDidLoad;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
