//
// This file is autogenerated
//

//
//  LogRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Log
//

public class LogRequest: Request {

  public func registerLogger(name: String, level: LogLevel) throws {
    let args: [String: AnyObject] = ["name": name, "level": level.rawValue]
    try self.sendRequest("keybase.1.log.registerLogger", args: args)
  }

}
