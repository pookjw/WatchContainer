#import <Availability.h>

#ifdef __cplusplus
#define WKI_EXTERN  extern "C" __attribute__((visibility ("default")))
#else
#define WKI_EXTERN  extern __attribute__((visibility ("default")))
#endif

#define WK_AVAILABLE_WATCHOS_ONLY(_watchOSIntro) __WATCHOS_AVAILABLE(_watchOSIntro) __IOS_UNAVAILABLE __attribute__((visibility("default")))
#define WK_DEPRECATED_WATCHOS(_watchOSIntro,_watchOSDep,_msg) __WATCHOS_DEPRECATED(_watchOSIntro,_watchOSDep,_msg) __attribute__((visibility("default")))
#define WK_DEPRECATED_WITH_REPLACEMENT(_watchOSIntro,_watchOSDep,replacement) __API_DEPRECATED_WITH_REPLACEMENT(replacement,watchos(_watchOSIntro,_watchOSDep)) __attribute__((visibility("default")))
