//
// This file is autogenerated
//

//
//  RevokeRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Revoke
//

public class RevokeRequest: Request {

  public func revokeKey(keyID: String) throws {
    let args: [String: Any] = ["keyID": keyID]
    _ = try self.sendRequest(method: "keybase.1.revoke.revokeKey", args: args)
  }

  public func revokeDevice(deviceID: String, force: Bool) throws {
    let args: [String: Any] = ["deviceID": deviceID, "force": force]
    _ = try self.sendRequest(method: "keybase.1.revoke.revokeDevice", args: args)
  }

  public func revokeSigs(sigIDQueries: [String]) throws {
    let args: [String: Any] = ["sigIDQueries": sigIDQueries]
    _ = try self.sendRequest(method: "keybase.1.revoke.revokeSigs", args: args)
  }

}
