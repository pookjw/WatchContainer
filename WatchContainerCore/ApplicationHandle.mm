//
//  ApplicationHandle.mm
//  WatchContainerCore
//
//  Created by Jinwoo Kim on 9/7/26.
//

#include "ApplicationHandle.h"
#import <WatchContainerCore/WCCError.h>
#import <FrontBoard/FrontBoard.h>

std::optional<std::shared_ptr<WCC::ApplicationHandle>> WCC::ApplicationHandle::createHandle(NSBundle *applicationBundle, NSError * __autoreleasing _Nullable * _Nullable error) {
    NSURL *executableURL = applicationBundle.executableURL;
    if (executableURL == nil) {
        if (error != NULL) {
            *error = [NSError errorWithDomain:WatchContainerErrorDomain code:WatchContainerErrorCodeNoExecutableURL userInfo:nil];
        }
        
        return {};
    }
    
    BOOL isDirectory = NO;
    BOOL exists = [NSFileManager.defaultManager fileExistsAtPath:executableURL.path isDirectory:&isDirectory];
    if (!exists || isDirectory) {
        if (error != NULL) {
            *error = [NSError errorWithDomain:WatchContainerErrorDomain code:WatchContainerErrorCodeExecutableNotFound userInfo:nil];
        }
        
        return {};
    }
    
    std::shared_ptr<WCC::ApplicationHandle> result = std::make_shared<WCC::ApplicationHandle>(WCC::ApplicationHandle(applicationBundle));
    return result;
}

WCC::ApplicationHandle::ApplicationHandle(NSBundle *applicationBundle)
: _applicationHandle([applicationBundle retain]) {
    // noop
}

WCC::ApplicationHandle::~ApplicationHandle() {
    [this->_applicationHandle release];
}
