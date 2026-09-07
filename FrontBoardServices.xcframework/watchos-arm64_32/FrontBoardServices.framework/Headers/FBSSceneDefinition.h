#import <Foundation/Foundation.h>
#import <FrontBoardServices/FBSSceneIdentity.h>
#import <FrontBoardServices/FBSSceneClientIdentity.h>
#import <FrontBoardServices/FBSSceneSpecification.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBSSceneDefinition : NSObject <NSCopying, NSMutableCopying>
+ (instancetype)definition;
@property (copy, nonatomic, nullable, readonly) FBSSceneIdentity *identity;
@property (copy, nonatomic, nullable, readonly) FBSSceneClientIdentity *clientIdentity;
@property (copy, nonatomic, nullable, readonly) FBSSceneSpecification *specification;
@end

NS_ASSUME_NONNULL_END
