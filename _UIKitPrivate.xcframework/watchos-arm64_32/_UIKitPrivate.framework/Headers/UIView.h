#import <_UIKitPrivate/UIResponder.h>
#import <_UIKitPrivate/UIAppearance.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

@class UIColor;

UIKIT_EXTERN NS_SWIFT_UI_ACTOR
@interface UIView : UIResponder
@property (nullable, nonatomic, copy) UIColor *backgroundColor UI_APPEARANCE_SELECTOR;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
