import { NativeModules } from "react-native";

const { KlaviyoModule } = NativeModules;

export const initializeKlaviyoSDK = (apiKey: string) => {
  KlaviyoModule.initializeKlaviyoSDK(apiKey);
};

export const setExternalId = (externalId: string) => {
  KlaviyoModule.setExternalId(externalId);
};

// export const getExternalId = (callback: Function | undefined): String | null => {
//   return KlaviyoModule.getExternalId(callback);
// }

// export const getExternalId = async (): Promise<string | null> => {
//   try {
//     const externalId = await KlaviyoModule.getExternalId();
//     return externalId;
//   } catch (error) {
//     console.error("Error getting external ID:", error);
//     return null;
//   }
// };

export const getExternalId = (callback: (error: any, externalId: string | null) => void): void => {
  KlaviyoModule.getExternalId((error: any, externalId: string | null) => {
    if (error) {
      console.error("Error getting external ID:", error);
      callback(error, null);
    } else {
      callback(null, externalId);
    }
  });
};
