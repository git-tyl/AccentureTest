// CalendarManagerBridge.m
#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(CalendarManager2, NSObject)


RCT_EXTERN_METHOD(testAFNetworkingGet:(RCTResponseSenderBlock)callback)
RCT_EXTERN_METHOD(addEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *)date)

RCT_EXTERN_METHOD(saySomething)
RCT_EXTERN_METHOD(callbackMethod:(RCTResponseSenderBlock)callback)

@end
