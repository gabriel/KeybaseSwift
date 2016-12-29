//
// This file is autogenerated
//

//
//  ReachabilityRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Reachability
//

public class ReachabilityRequest: Request {

  public func reachabilityChanged(reachability: Reachability) throws {
    let args: [String: Any] = ["reachability": reachability]
    _ = try self.sendRequest(method: "keybase.1.reachability.reachabilityChanged", args: args)
  }

/*!
 Start reachability checks and return current status, which
 may be cached.
 */
  public func startReachability() throws -> Reachability {
    let args: [String: Any] = [String: Any]()
    let response = try self.sendRequest(method: "keybase.1.reachability.startReachability", args: args)
    try checkNull(response: response)
    return Reachability.fromJSON(JSON(response))
  }

/*!
 Performs a reachability check. This is not a cached response.
 */
  public func checkReachability() throws -> Reachability {
    let args: [String: Any] = [String: Any]()
    let response = try self.sendRequest(method: "keybase.1.reachability.checkReachability", args: args)
    try checkNull(response: response)
    return Reachability.fromJSON(JSON(response))
  }

}