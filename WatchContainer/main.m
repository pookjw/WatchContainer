//
//  main.mm
//  WatchContainer
//
//  Created by Jinwoo Kim on 9/7/26.
//

#import <Foundation/Foundation.h>
#import <_UIKitPrivate/_UIKitPrivate.h>
#import <_WatchKitPrivate/_WatchKitPrivate.h>
#import <PepperUICore/PepperUICore.h>
#import "AppDelegate.h"

int main(int argc, char * argv[]) {
    spUtils_setRunningExtensionlessWKApp(YES);
    NSAutoreleasePool *pool = [[NSAutoreleasePool alloc] init];
    int result = UIApplicationMain(argc, argv, NSStringFromClass([SPApplication class]), NSStringFromClass([AppDelegate class]));
    [pool release];
    return result;
}
