#import <Foundation/Foundation.h>
#import <FrontBoard/FBProcessWatchdogProviding.h>
#import <FrontBoard/FBProcess.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBProcessExecutionContext : NSObject <NSCopying, NSMutableCopying>
@property (copy, nonatomic, readonly, nullable) NSArray<NSString *> *arguments;
@property (copy, nonatomic, readonly, nullable) NSDictionary<NSString *, NSString *> *environment;
@property (retain, nonatomic, readonly, nullable) NSURL *standardOutputURL;
@property (retain, nonatomic, readonly, nullable) NSURL *standardErrorURL;
@property (nonatomic, readonly) BOOL waitForDebugger;
@property (nonatomic, readonly) BOOL disableASLR;
@property (nonatomic, readonly) BOOL checkForLeaks;
@property (nonatomic, readonly) BOOL enableMTE;
@property (nonatomic, readonly) BOOL forSceneActivation;
@property (nonatomic, readonly) NSInteger launchIntent;
@property (retain, nonatomic, readonly, nullable) id<FBProcessWatchdogProviding> watchdogProvider;
@property (nonatomic, readonly) double watchdogExtension;
@property (copy, nonatomic, readonly, nullable) void (^completion)(FBProcess * _Nullable process, NSError * _Nullable error);
@end

NS_ASSUME_NONNULL_END
