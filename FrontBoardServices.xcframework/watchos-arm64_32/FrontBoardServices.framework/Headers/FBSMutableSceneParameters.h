#import <FrontBoardServices/FBSSceneParameters.h>
#import <FrontBoardServices/FBSMutableSceneClientSettings.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBSMutableSceneParameters : FBSSceneParameters
- (void)updateClientSettingsWithBlock:(void (^)(FBSMutableSceneClientSettings *settings))block;
@end

NS_ASSUME_NONNULL_END
