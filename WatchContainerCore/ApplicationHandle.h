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
#include <memory>
#include <optional>
#include <functional>

NS_ASSUME_NONNULL_BEGIN

namespace WCC {

class ApplicationHandle {
public:
    static std::optional<std::shared_ptr<WCC::ApplicationHandle>> createHandle(NSBundle *applicationBundle, NSError * __autoreleasing _Nullable * _Nullable error);
    ~ApplicationHandle();
    
    void execute(std::function<void (NSError * _Nullable)> completion);
private:
    NSBundle *_applicationBundle;
    ApplicationHandle(NSBundle *applicationBundle);
};
};

NS_ASSUME_NONNULL_END

#endif /* ApplicationHandle_hpp */
#endif
