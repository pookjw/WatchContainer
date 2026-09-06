#import "WatchKitInterfaceGenerator.h"

@implementation WatchKitInterfaceGenerator

+ (NSString *)frameworkName {
    return @"_WatchKitPrivate";
}

+ (NSString *)originalFrameworkName {
    return @"WatchKit";
}

@end
