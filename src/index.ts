import { NativeModules } from "react-native";

const { KlaviyoModule } = NativeModules;

export const initializeKlaviyoSDK = (apiKey: string) => {
  KlaviyoModule.initializeKlaviyoSDK(apiKey);
};

export const setExternalId = (externalId: string) => {
  KlaviyoModule.setExternalId(externalId);
}

export const getExternalId = (callback: Function | undefined): String | null => {
  return KlaviyoModule.getExternalId(callback);
}
