//
//  KlaviyoModule.swift
//  KlaviyoModule
//
//  Copyright © 2021 grassper. All rights reserved.
//

import KlaviyoSwift

@objc(KlaviyoModule)
class KlaviyoModule: NSObject {
  @objc
  public static func initializeKlaviyoSDK(_ value: String) {
    KlaviyoSDK().initialize(with: value)
  }

  @objc
  public static func setExternalId(_ value: String) {
    KlaviyoSDK().set(externalId: value)
  }

  // @objc
  // public static func getExternalId() -> String {
  //   return KlaviyoSDK().externalId ?? ""
  // }

  // @objc(getExternalId:rejecter:)
  // func getExternalId(resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) {
  //   if let externalId = KlaviyoSDK().externalId {
  //     resolve(externalId)
  //   } else {
  //     reject("no_id", "There is no external ID set", nil)
  //   }
  // }

  @objc(getExternalId:)
  public static func getExternalId(callback: RCTResponseSenderBlock) {
    if let externalId = KlaviyoSDK().externalId {
      callback([NSNull(), externalId])
    } else {
      callback(["External ID not found", NSNull()])
    }
  }

  @objc
  func setPushToken(tokenData: Data) {
    KlaviyoSDK().setPushToken(tokenData)
  }

  @objc
  class func setPushTokenNative(tokenData: Data) {
    KlaviyoSDK().setPushToken(tokenData)
  }
}
