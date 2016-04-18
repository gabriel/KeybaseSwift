//
// This file is autogenerated
//

//
//  RevokeRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Revoke
//

public class RevokeRequest: Request {

  public func revokeKey(keyID: String) throws {
    let args: [String: AnyObject] = ["keyID": keyID]
    try self.sendRequest("keybase.1.revoke.revokeKey", args: args)
  }

  public func revokeDevice(deviceID: String, force: Bool) throws {
    let args: [String: AnyObject] = ["deviceID": deviceID, "force": force]
    try self.sendRequest("keybase.1.revoke.revokeDevice", args: args)
  }

  public func revokeSigs(sigIDQueries: [String]) throws {
    let args: [String: AnyObject] = ["sigIDQueries": sigIDQueries]
    try self.sendRequest("keybase.1.revoke.revokeSigs", args: args)
  }

}