//
//  WCCError.h
//  WatchContainer
//
//  Created by Jinwoo Kim on 9/7/26.
//


#ifndef WCCError_hpp
#define WCCError_hpp

#import <Foundation/Foundation.h>
#import <WatchContainerCore/WCCDefines.h>

NS_HEADER_AUDIT_BEGIN(nullability, sendability)

WCC_EXTERN NSErrorDomain const WatchContainerErrorDomain;

typedef NS_ENUM(NSInteger, WatchContainerErrorCode) {
    WatchContainerErrorCodeUnknown = -1,
    WatchContainerErrorCodeNoExecutableURL = 1,
    WatchContainerErrorCodeExecutableNotFound = 2,
    WatchContainerErrorCodeNoBundleIdentifier = 3
};

NS_HEADER_AUDIT_END(nullability, sendability)

#endif /* WCCError_hpp */
