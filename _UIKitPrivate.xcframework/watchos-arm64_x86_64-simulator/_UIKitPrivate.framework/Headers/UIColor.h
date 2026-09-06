#import <Foundation/Foundation.h>
#import <_UIKitPrivate/UIDefines.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

UIKIT_EXTERN
@interface UIColor : NSObject <NSSecureCoding, NSCopying>
@property (class, nonatomic, readonly) UIColor *systemOrangeColor;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
