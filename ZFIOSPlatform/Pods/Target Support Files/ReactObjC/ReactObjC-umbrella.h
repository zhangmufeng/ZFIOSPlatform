#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "RABoolReactor+Protected.h"
#import "RABoolReactor.h"
#import "RAConnection+Package.h"
#import "RADoubleReactor+Protected.h"
#import "RADoubleReactor.h"
#import "RAFloatReactor+Protected.h"
#import "RAFloatReactor.h"
#import "RAIntReactor+Protected.h"
#import "RAIntReactor.h"
#import "RAObjectReactor+Protected.h"
#import "RAObjectReactor.h"
#import "RAReactor+Protected.h"
#import "RAReactor.h"
#import "RAStringReactor+Protected.h"
#import "RAStringReactor.h"
#import "RAUtil.h"
#import "RABoolSignal.h"
#import "RABoolValue.h"
#import "RACloseable.h"
#import "RACloseableSet.h"
#import "RAConnection.h"
#import "RADefs.h"
#import "RADoubleSignal.h"
#import "RADoubleValue.h"
#import "RAFloatSignal.h"
#import "RAFloatValue.h"
#import "RAFuture.h"
#import "RAIntSignal.h"
#import "RAIntValue.h"
#import "RAMappedSignal.h"
#import "RAMultiFailureError.h"
#import "RAObjectSignal.h"
#import "RAObjectValue.h"
#import "RAPromise.h"
#import "RAStringSignal.h"
#import "RAStringValue.h"
#import "RATry.h"
#import "RAUnitSignal.h"
#import "React.h"

FOUNDATION_EXPORT double ReactObjCVersionNumber;
FOUNDATION_EXPORT const unsigned char ReactObjCVersionString[];

