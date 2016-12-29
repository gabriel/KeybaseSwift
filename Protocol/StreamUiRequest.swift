//
// This file is autogenerated
//

//
//  StreamUIRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// StreamUI
//

public class StreamUIRequest: Request {

  public func close(s: Stream) throws {
    let args: [String: Any] = ["s": s]
    _ = try self.sendRequest(method: "keybase.1.streamUi.close", args: args)
  }

  public func read(s: Stream, sz: Int) throws -> NSData {
    let args: [String: Any] = ["s": s, "sz": NSNumber(value: sz)]
    let response = try self.sendRequest(method: "keybase.1.streamUi.read", args: args)
    try checkNull(response: response)
    return JSON(response).object as! NSData
  }

  public func reset(s: Stream) throws {
    let args: [String: Any] = ["s": s]
    _ = try self.sendRequest(method: "keybase.1.streamUi.reset", args: args)
  }

  public func write(s: Stream, buf: NSData) throws -> Int {
    let args: [String: Any] = ["s": s, "buf": buf]
    let response = try self.sendRequest(method: "keybase.1.streamUi.write", args: args)
    try checkNull(response: response)
    return JSON(response).intValue
  }

}
