//
//  IconPickerModule.m
//  IconPickerModule
//
//  Copyright © 2021 grassper. All rights reserved.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(KlaviyoModule, NSObject)

RCT_EXTERN_METHOD(initializeKlaviyoSDK:(NSString *)value)
RCT_EXTERN_METHOD(setExternalId:(NSString *)value)
// RCT_EXTERN_METHOD(getExternalId:(RCTPromiseResolveBlock)resolve rejecter:(RCTPromiseRejectBlock)reject)
RCT_EXTERN_METHOD(getExternalId:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(setPushToken:(NSData *)tokenData)

@end
