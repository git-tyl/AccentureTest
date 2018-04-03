//
//  CalendarManager2.swift
//  RCTVibration
//
//  Created by tyl on 3/4/18.
//  Copyright © 2018 Facebook. All rights reserved.
//

import Foundation

@objc(CalendarManager2)

class CalendarManager2: NSObject {
  
  @objc(addEvent:location:date:)
  func addEvent(name: String, location: String, date: NSNumber) -> Void {
    // Date is ready to use!
    print("name \(name), location \(location), date \(date)")
  }
  
  @objc(saySomething)
  func saySomething() -> String {
    // Date is ready to use!
    return "Hello World!"
  }
  
  @objc
  func constantsToExport() -> [String: Any]! {
    return ["someKey": "someValue"]
  }
  
  @objc(callbackMethod:)
  func callbackMethod(callback: RCTResponseSenderBlock) -> Void {
    
    let resultsDict = [
      "success" : true
    ];
    
    callback([NSNull() ,resultsDict])
  }
}
