//
//  pureObjectCAFNetworking.m
//  AccentureTest
//
//  Created by tyl on 4/4/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import "pureObjectCAFNetworking.h"
#import "AFNetworking.h"

@implementation pureObjectCAFNetworking


+(void)getTestWithCompletionHandler:(void (^)(NSURLResponse *newResponse, id newResponseObject, NSError *newError))completionHandler {
//  NSLog(@"pureObjectCAFNetworking test");
  
  NSURLSessionConfiguration *configuration = [NSURLSessionConfiguration defaultSessionConfiguration];
  AFURLSessionManager *manager = [[AFURLSessionManager alloc] initWithSessionConfiguration:configuration];
  
  NSURL *URL = [NSURL URLWithString:@"https://private-fd094-accentureapi1.apiary-mock.com/users"];
  NSURLRequest *request = [NSURLRequest requestWithURL:URL];
  
  NSURLSessionDataTask *dataTask = [manager dataTaskWithRequest:request completionHandler:^(NSURLResponse *response, id responseObject, NSError *error) {
    if (error) {
      //      reject(@"fail_get_event", @"Failed to get users", error);
//            NSLog(@"Error: %@", error);
      error = error;
    } else {
      completionHandler(response,responseObject,error);
      //      resolve(responseObject);
//            NSLog(@"%@ %@", response, responseObject);
//      newResponse = response;
//      newResponseObject = responseObject;
      
    }
  }];
  [dataTask resume];
}

@end
