#import <FrontBoardServices/FBSSceneDefinition.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBSMutableSceneDefinition : FBSSceneDefinition
@property (copy, nonatomic, nullable) FBSSceneIdentity *identity;
@property (copy, nonatomic, nullable) FBSSceneClientIdentity *clientIdentity;
@property (copy, nonatomic, nullable) FBSSceneSpecification *specification;
@end

NS_ASSUME_NONNULL_END
