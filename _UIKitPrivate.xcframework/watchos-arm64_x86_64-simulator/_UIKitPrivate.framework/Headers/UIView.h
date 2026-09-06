#import <_UIKitPrivate/UIResponder.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

@class UIColor;

UIKIT_EXTERN NS_SWIFT_UI_ACTOR
@interface UIView : UIResponder
@property (nullable, nonatomic, copy) UIColor *backgroundColor;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
