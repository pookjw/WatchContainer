//
//  ApplicationHandle.mm
//  WatchContainerCore
//
//  Created by Jinwoo Kim on 9/7/26.
//

#include "ApplicationHandle.h"
#import <WatchContainerCore/WCCError.h>
#import <FrontBoard/FrontBoard.h>
#import <FrontBoardServices/FrontBoardServices.h>

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
    
    if (applicationBundle.bundleIdentifier == nil) {
        if (error != NULL) {
            *error = [NSError errorWithDomain:WatchContainerErrorDomain code:WatchContainerErrorCodeNoBundleIdentifier userInfo:nil];
        }
        
        return {};
    }
    
    std::shared_ptr<WCC::ApplicationHandle> result = std::make_shared<WCC::ApplicationHandle>(WCC::ApplicationHandle(applicationBundle));
    return result;
}

WCC::ApplicationHandle::ApplicationHandle(NSBundle *applicationBundle)
: _applicationBundle([applicationBundle retain]) {
    // noop
}

WCC::ApplicationHandle::~ApplicationHandle() {
    [this->_applicationBundle release];
}

void WCC::ApplicationHandle::execute(std::function<void (NSError * _Nullable)> completion) {
    // -[CSLActivateApplicationTask _executeAllowingRetry:completion:]
    /*
     <0x10ad23840>activate-com.apple.NanoSettings
     0x10ad23840 -> self
     "<%p>activate-%@"
     -[SWPreventSystemSleepAssertion initWithIdentifier:]
     
     0.0, nil
     -[SWPreventSystemSleepAssertion acquireWithTimeout:handler:]
     
     -[CSLActivateApplicationTransaction createExecutionContextForApplication:]
     */
    FBMutableProcessExecutionContext *executionContext = [[FBMutableProcessExecutionContext alloc] init];
    executionContext.environment = @{};
    executionContext.waitForDebugger = NO;
    executionContext.disableASLR = NO;
    executionContext.arguments = nil;
    executionContext.standardOutputURL = nil;
    executionContext.standardErrorURL = nil;
    executionContext.watchdogExtension = 0.0;
    executionContext.enableMTE = NO;
    executionContext.launchIntent = 4;
    executionContext.watchdogProvider = nil; // CSLApplicationProcessWatchdogPolicy
    executionContext.completion = ^(FBProcess * _Nullable process, NSError * _Nullable error) {
        abort();
    };
    
    FBSMutableSceneDefinition *definition = [FBSMutableSceneDefinition definition];
    NSString *bundleIdentifier = this->_applicationBundle.bundleIdentifier;
    assert(bundleIdentifier != nil);
    definition.identity = [FBSSceneIdentity identityForIdentifier:bundleIdentifier];
    definition.clientIdentity = [FBSSceneClientIdentity identityForBundleID:bundleIdentifier];
    
    /*
     (lldb) po $x20
     <FBSMutableSceneDefinition: 0x112b00540; identifier: com.apple.NanoSettings> {
         identity = com.apple.NanoSettings;
         clientIdentity = app<com.apple.NanoSettings((null))>;
         specification = <PUICApplicationSceneSpecification: 0x1138e78a0> {
             hostAgentClass = CSLApplicationSceneHostAgent;
             clientAgentClass = PUICApplicationSceneClientAgent;
             settingsClass = PUICApplicationSceneSettings;
             clientSettingsClass = PUICApplicationSceneClientSettings;
             transitionContextClass = PUICApplicationSceneTransitionContext;
             defaultExtensions = {
                 _UISceneRelationshipManagementExtension (UIKitCore);
                 _UIApplicationSceneKeyboardExtension (UIKitCore);
                 _UISceneGeometryExtension (UIKitCore);
                 _UISceneMaskingExtension (UIKitCore);
                 _UISystemChromeSceneExtension (UIKitCore);
                 _UISystemShellSceneHostingEnvironmentExtension (UIKitCore);
                 _UISceneRenderingEnvironmentExtension (UIKitCore);
                 _UISceneTransitioningExtension (UIKitCore);
                 _UISceneActivationInteractionExtension (UIKitCore);
                 _UISceneFocusSystemExtension (UIKitCore);
                 _UISceneRegionExtension (UIKitCore);
                 _UISceneWindowingControlExtension (UIKitCore);
                 _UICompanionSceneInterestExtension (UIKitCore);
                 _UIResourceConditionsSceneExtension (UIKitCore);
                 SHSceneActionHandlerExtension (SceneHosting);
                 PUICWatchGesturesSceneExtension (PepperUICore);
             }
         };
     }
     */
//    definition.specification = nil;
    
    FBScene *fbScene = [[FBSceneManager sharedInstance] createSceneWithDefinition:definition];
//    [fbScene addExtension:[CSLApplicationLifecycleSceneExtension class]];
    // __63-[CSLActivateApplicationTask _executeAllowingRetry:completion:]_block_invoke.64
//    [fbScene configureParameters:nil]
    
    [fbScene performUpdate:^(FBSMutableSceneSettings * _Nonnull settings, FBSSceneTransitionContext * _Nonnull transitionContext) {
        abort();
    } withCompletion:^(bool success, NSError * _Nonnull error) {
        abort();
    }];
    
    abort();
}
