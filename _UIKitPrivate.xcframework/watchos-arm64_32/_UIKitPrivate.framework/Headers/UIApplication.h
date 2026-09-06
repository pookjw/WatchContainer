#import <Foundation/Foundation.h>
#import <_UIKitPrivate/UIDefines.h>
#import <_UIKitPrivate/UIResponder.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

@class UISceneConfiguration, UISceneSession, UISceneConnectionOptions;

UIKIT_EXTERN int UIApplicationMain(int argc, char * _Nullable argv[_Nonnull], NSString * _Nullable principalClassName, NSString * _Nullable delegateClassName);

@interface UIApplication : UIResponder
@end

typedef NSString * UIApplicationLaunchOptionsKey NS_TYPED_ENUM;

NS_SWIFT_UI_ACTOR
@protocol UIApplicationDelegate <NSObject>
@optional
- (void)applicationDidFinishLaunching:(UIApplication *)application;
- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(nullable NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions;
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(nullable NSDictionary<UIApplicationLaunchOptionsKey, id> *)launchOptions;
- (void)applicationDidBecomeActive:(UIApplication *)application;
- (void)applicationWillEnterForeground:(UIApplication *)application;
- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options;
@end

NS_HEADER_AUDIT_END(nullability, sendability)
