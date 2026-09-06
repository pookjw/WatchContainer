//
//  SceneDelegate.m
//  WatchContainer
//
//  Created by Jinwoo Kim on 9/7/26.
//

#import "SceneDelegate.h"
#import "TestViewController.h"

@implementation SceneDelegate

- (void)dealloc {
    [_window release];
    [super dealloc];
}

- (void)scene:(UIScene *)scene willConnectToSession:(UISceneSession *)session options:(UISceneConnectionOptions *)connectionOptions {
    UIWindow *window = [[UIWindow alloc] initWithWindowScene:(UIWindowScene *)scene];
    
    TestViewController *rootViewController = [[TestViewController alloc] init];
    window.rootViewController = rootViewController;
    [rootViewController release];
    
    self.window = window;
    [window makeKeyAndVisible];
    [window release];
}

@end
