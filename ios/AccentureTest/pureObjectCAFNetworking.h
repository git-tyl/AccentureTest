//
//  pureObjectCAFNetworking.h
//  AccentureTest
//
//  Created by tyl on 4/4/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface pureObjectCAFNetworking : NSObject

//+(void)getTest;
+(void)getTestWithCompletionHandler:(void (^)(NSURLResponse *newResponse, id newResponseObject, NSError *newError))completionHandler;
@end
