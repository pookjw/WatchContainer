#import <Foundation/Foundation.h>
#import <FrontBoardServices/FrontBoardServices.h>
#import <FrontBoard/FBScene.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBSceneManager : NSObject
+ (FBSceneManager *)sharedInstance;
- (FBScene *)createSceneWithDefinition:(FBSSceneDefinition *)definition;
@end

NS_ASSUME_NONNULL_END
