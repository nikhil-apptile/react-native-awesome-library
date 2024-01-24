import { NativeModules } from "react-native";

const { KlaviyoModule } = NativeModules;

export const initializeKlaviyoSDK = (apiKey: string) => {
  KlaviyoModule.initializeKlaviyoSDK(apiKey);
};
