//
//  ApplicationHandle.h
//  WatchContainerCore
//
//  Created by Jinwoo Kim on 9/7/26.
//

#ifdef __cplusplus
#ifndef ApplicationHandle_hpp
#define ApplicationHandle_hpp

#import <Foundation/Foundation.h>
#import <WatchContainerCore/WCCDefines.h>
#include <optional>
#include <functional>

NS_ASSUME_NONNULL_BEGIN

namespace WCC {

struct ApplicationHandle {
public:
    static std::optional<WCC::ApplicationHandle> createHandle(NSBundle *applicationBundle, NSError * __autoreleasing _Nullable * _Nullable error);
    ~ApplicationHandle();
    ApplicationHandle(const WCC::ApplicationHandle &handle);
    ApplicationHandle& operator=(const WCC::ApplicationHandle &handle);
    
    void execute(std::function<void (NSError * _Nullable)> completion);
private:
    NSBundle *_applicationBundle;
    ApplicationHandle(NSBundle *applicationBundle);
};
};

NS_ASSUME_NONNULL_END

#endif /* ApplicationHandle_hpp */
#endif
