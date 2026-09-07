#import <FrontBoard/FBProcessExecutionContext.h>

NS_ASSUME_NONNULL_BEGIN

@interface FBMutableProcessExecutionContext : FBProcessExecutionContext
@property (copy, nonatomic, nullable) NSArray<NSString *> *arguments;
@property (copy, nonatomic, nullable) NSDictionary<NSString *, NSString *> *environment;
@property (retain, nonatomic, nullable) NSURL *standardOutputURL;
@property (retain, nonatomic, nullable) NSURL *standardErrorURL;
@property (nonatomic) BOOL waitForDebugger;
@property (nonatomic) BOOL disableASLR;
@property (nonatomic) BOOL checkForLeaks;
@property (nonatomic) BOOL enableMTE;
@property (nonatomic) BOOL forSceneActivation;
@property (nonatomic) NSInteger launchIntent;
@property (retain, nonatomic, nullable) id<FBProcessWatchdogProviding> watchdogProvider;
@property (nonatomic) double watchdogExtension;
@property (copy, nonatomic, nullable) void (^completion)(FBProcess * _Nullable process, NSError * _Nullable error);
@end

NS_ASSUME_NONNULL_END

