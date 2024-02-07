// //
// //  KlaviyoModule.swift
// //  KlaviyoModule
// //
// //  Copyright © 2021 grassper. All rights reserved.
// //

// import KlaviyoSwift

// @objc(KlaviyoModule)
// class KlaviyoModule: NSObject {
//   @objc
//   public static func initializeKlaviyoSDK(_ value: String) {
//     KlaviyoSDK().initialize(with: value)
//   }

//   @objc
//   public static func setExternalId(_ value: String) {
//     KlaviyoSDK().set(externalId: value)
//   }

//   // @objc
//   // public static func getExternalId() -> String {
//   //   return KlaviyoSDK().externalId ?? ""
//   // }

//   // @objc(getExternalId:rejecter:)
//   // func getExternalId(resolve:RCTPromiseResolveBlock,reject:RCTPromiseRejectBlock) {
//   //   if let externalId = KlaviyoSDK().externalId {
//   //     resolve(externalId)
//   //   } else {
//   //     reject("no_id", "There is no external ID set", nil)
//   //   }
//   // }

//   @objc(getExternalId:)
//   public static func getExternalId(callback: RCTResponseSenderBlock) {
//     if let externalId = KlaviyoSDK().externalId {
//       callback([NSNull(), externalId])
//     } else {
//       callback(["External ID not found", NSNull()])
//     }
//   }

//   @objc
//   func setPushToken(tokenData: Data) {
//     KlaviyoSDK().setPushToken(tokenData)
//   }

//   @objc
//   class func setPushTokenNative(tokenData: Data) {
//     KlaviyoSDK().setPushToken(tokenData)
//   }
// }



// import Foundation
// import KlaviyoSwift

// @objc(KlaviyoModule)
// class KlaviyoModule: NSObject {
//     @objc
//     static func initializeKlaviyoSDK(_ apiKey: String) {
//         KlaviyoSDK.initialize(with: apiKey)
//     }

//     @objc
//     static func setExternalId(_ externalId: String) {
//         KlaviyoSDK.setExternalId(externalId)
//     }

//     @objc
//     static func getExternalId(_ callback: @escaping RCTResponseSenderBlock) {
//         if let externalId = KlaviyoSDK.getExternalId() {
//             callback([NSNull(), externalId])
//         } else {
//             callback(["External ID not found", NSNull()])
//         }
//     }

//     @objc
//     static func setPushToken(_ tokenData: Data) {
//         KlaviyoSDK.setPushToken(tokenData)
//     }
// }

import Foundation
import KlaviyoSwift

@objc(KlaviyoModule)
class KlaviyoModule: NSObject {
    var sdk = KlaviyoSDK();

    @objc
    func initializeKlaviyoSDK(_ apiKey: String) {
        sdk.initialize(with: apiKey)
    }

    @objc
    func setExternalId(_ externalId: String) {
        sdk.set(externalId: externalId);
    }

    @objc
    func getExternalId(_ callback: @escaping RCTResponseSenderBlock) {
        if let externalId = sdk.externalId {
            callback([NSNull(), externalId])
        } else {
            callback(["External ID not found", NSNull()])
        }
    }

    @objc
    func setPushToken(_ tokenData: String) {
        sdk.set(pushToken: tokenData);
    }
}
