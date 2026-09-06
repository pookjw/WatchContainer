//
//  AppDelegate.mm
//  WatchContainer
//
//  Created by Jinwoo Kim on 9/7/26.
//

#import "AppDelegate.h"

@interface AppDelegate ()
@property (nonatomic) BOOL hasReceivedNonClockKitEvent;
@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary<UIApplicationLaunchOptionsKey,id> *)launchOptions {
    NSURL *scCacheURL = [[NSFileManager.defaultManager URLsForDirectory:NSLibraryDirectory inDomains:NSUserDomainMask].firstObject URLByAppendingPathComponent:@"Saved Application State" isDirectory:YES];
    [NSFileManager.defaultManager removeItemAtURL:scCacheURL error:NULL];
    
    // TODO
    return YES;
}

- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    abort();
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // TODO
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // TODO
}

- (void)didReceiveNonClockKitEvent {
    // TODO
}

- (id _Nullable)extendLaunchTest {
    // TODO
    return nil;
}

@end
