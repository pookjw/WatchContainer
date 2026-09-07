#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBSSceneIdentity : NSObject <NSCopying>
+ (FBSSceneIdentity *)identityForIdentifier:(NSString *)identifier;
@end

NS_ASSUME_NONNULL_END
