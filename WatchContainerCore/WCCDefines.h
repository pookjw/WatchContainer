#ifdef __cplusplus
#define WCC_EXTERN  extern "C" __attribute__((visibility ("default")))
#else
#define WCC_EXTERN  extern __attribute__((visibility ("default")))
#endif

#ifdef __cplusplus
namespace WCC {};
#endif
