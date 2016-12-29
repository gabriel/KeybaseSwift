//
// This file is autogenerated
//

//
//  LogRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Log
//

public class LogRequest: Request {

  public func registerLogger(name: String, level: LogLevel) throws {
    let args: [String: Any] = ["name": name, "level": level.rawValue]
    _ = try self.sendRequest(method: "keybase.1.log.registerLogger", args: args)
  }

}
