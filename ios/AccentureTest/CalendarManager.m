//
//  CalendarManager.m
//  AccentureTest
//
//  Created by tyl on 3/4/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "CalendarManager.h"
#import <React/RCTLog.h>
#import <React/RCTConvert.h>
#import "AFNetworking.h"

@implementation CalendarManager

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(addEvent:(NSString *)name location:(NSString *)location)
{
  RCTLogInfo(@"Pretending to create an event %@ at %@", name, location);
}

RCT_EXPORT_METHOD(addTimeEvent:(NSString *)name location:(NSString *)location date:(nonnull NSNumber *)secondsSinceUnixEpoch)
{
  NSDate *date = [RCTConvert NSDate:secondsSinceUnixEpoch];
  RCTLogInfo(@"Date %@", date);
}

RCT_REMAP_METHOD(AFNetworkingTest,
                 networkingWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  
  NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
  AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
  
  NSURL *URL = [NSURL URLWithString:@"https://private-fd094-accentureapi1.apiary-mock.com/users"];
  NSURLRequest *request = [NSURLRequest requestWithURL:URL];
  
  NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
    if (error) {
//      reject(@"fail_get_event", @"Failed to get users", error);
//      NSLog(@"Error: %@", error);
    } else {
//      resolve(responseObject);
//      NSLog(@"%@ %@", response, responseObject);
    }
  }];
  [dataTask resume];

  
//  NSArray *events = @[@"zzzABCD",@"zzztest"];
//  if (events) {
//    resolve(events);
//  } else {
//    NSError *error = nil;
//    reject(@"no_events", @"There were no events", error);
//  }
}

RCT_REMAP_METHOD(AFNetworkingPostTest,
                 networkingPostWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  
  
  
  NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
  AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
  
  NSURL *URL = [NSURL URLWithString:@"https://private-fd094-accentureapi1.apiary-mock.com/users"];
  
  NSDictionary *parameters = @{@"name": @"user name", @"title": @"title"};
  
  NSURLRequest *request = [[AFHTTPRequestSerializer serializer] requestWithMethod:@"POST" URLString:URL.absoluteString parameters:parameters error:nil];
  
  NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
    if (error) {
            NSLog(@"Error: %@", error);
      reject(@"fail_get_event", @"Failed to get users", error);
      
    } else {
      NSLog(@"%@ %@", response, responseObject);
      resolve(responseObject);
      
    }
  }];
  [dataTask resume];
  
  
  //  NSArray *events = @[@"zzzABCD",@"zzztest"];
  //  if (events) {
  //    resolve(events);
  //  } else {
  //    NSError *error = nil;
  //    reject(@"no_events", @"There were no events", error);
  //  }
}


RCT_REMAP_METHOD(findEvents,
                 findEventsWithResolver:(RCTPromiseResolveBlock)resolve
                 rejecter:(RCTPromiseRejectBlock)reject)
{
  NSArray *events = @[@"zzzABCD",@"zzztest"];
  if (events) {
    resolve(events);
  } else {
    NSError *error = nil;
    reject(@"no_events", @"There were no events", error);
  }
}

@end
