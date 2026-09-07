#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBSSceneClientIdentity : NSObject <NSCopying>
+ (FBSSceneClientIdentity *)identityForBundleID:(NSString *)bundleID;
@end

NS_ASSUME_NONNULL_END
