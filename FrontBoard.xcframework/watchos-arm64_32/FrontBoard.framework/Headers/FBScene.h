#import <Foundation/Foundation.h>
#import <FrontBoardServices/FrontBoardServices.h>
NS_ASSUME_NONNULL_BEGIN

@interface FBScene : NSObject
- (void)performUpdate:(void (^)(FBSMutableSceneSettings *settings, FBSSceneTransitionContext *transitionContext))update withCompletion:(void (^)(bool success, NSError *error))completion;
@end

NS_ASSUME_NONNULL_END
