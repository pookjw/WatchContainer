#import <Foundation/Foundation.h>
#import <FrontBoardServices/FrontBoardServices.h>
NS_ASSUME_NONNULL_BEGIN

@interface FBScene : NSObject
- (void)performUpdate:(void (^)(FBSMutableSceneSettings *settings, FBSSceneTransitionContext *transitionContext))update withCompletion:(void (^)(BOOL success, NSError * _Nullable error))completion;
- (void)configureParameters:(void (^)(FBSMutableSceneParameters *parameters))configure;
@end

NS_ASSUME_NONNULL_END
