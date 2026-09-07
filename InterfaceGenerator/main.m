#import <Foundation/Foundation.h>
#import "Subclasses/UIKitInterfaceGenerator.h"
#import "Subclasses/WatchKitInterfaceGenerator.h"
#import "Subclasses/PepperUICoreInterfaceGenerator.h"
#import "Subclasses/FrontBoardInterfaceGenerator.h"
#import "Subclasses/RunningBoardServicesInterfaceGenerator.h"
#import "Subclasses/FrontBoardServicesInterfaceGenerator.h"

NSURL * _Nullable resolveURL(const char *path) {
    NSString *string = [[NSString alloc] initWithCString:path encoding:NSUTF8StringEncoding];
    NSURL *url = [[NSURL alloc] initFileURLWithPath:string isDirectory:YES];
    
    NSFileManager *fileManager = NSFileManager.defaultManager;
    BOOL isDirectory;
    BOOL exists = [fileManager fileExistsAtPath:string isDirectory:&isDirectory];
    [string release];
    
    if (isDirectory && exists) {
        return [url autorelease];
    } else {
        [url release];
        return nil;
    }
}

int main(int argc, const char * argv[]) {
    if (argc < 3) {
        NSLog(@"InterfaceGenerator -p $PATH");
        return EXIT_FAILURE;
    }
    
    const char *path = argv[2];
    NSURL *resolvedURL = resolveURL(path);
    if (resolvedURL == nil) {
        NSLog(@"Does not exist: %s", path);
        return EXIT_FAILURE;
    }
    
    assert([UIKitInterfaceGenerator generateToURL:resolvedURL]);
    assert([WatchKitInterfaceGenerator generateToURL:resolvedURL]);
    assert([PepperUICoreInterfaceGenerator generateToURL:resolvedURL]);
    assert([FrontBoardInterfaceGenerator generateToURL:resolvedURL]);
    assert([RunningBoardServicesInterfaceGenerator generateToURL:resolvedURL]);
    assert([FrontBoardServicesInterfaceGenerator generateToURL:resolvedURL]);
    
    return EXIT_SUCCESS;
}
