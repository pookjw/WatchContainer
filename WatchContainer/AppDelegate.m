//
//  AppDelegate.m
//  WatchContainer
//
//  Created by Jinwoo Kim on 9/7/26.
//

#import "AppDelegate.h"
#import "SceneDelegate.h"

@interface AppDelegate ()
@property (nonatomic) BOOL hasReceivedNonClockKitEvent;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
    NSURL *scCacheURL = [[NSFileManager.defaultManager URLsForDirectory:NSLibraryDirectory inDomains:NSUserDomainMask].firstObject URLByAppendingPathComponent:@"Saved Application State" isDirectory:YES];
    [NSFileManager.defaultManager removeItemAtURL:scCacheURL error:NULL];
    
    return YES;
}

- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    UISceneConfiguration *configuration = [connectingSceneSession.configuration copy];
    configuration.delegateClass = [SceneDelegate class];
    return [configuration autorelease];
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // noop
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // noop
}

- (void)didReceiveNonClockKitEvent {
    // noop
}

- (id _Nullable)extendLaunchTest {
    return nil;
}

@end
