//
// This file is autogenerated
//

//
//  PaperprovisionRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Paperprovision
//

public class PaperprovisionRequest: Request {

/*!
 Performs paper provision.
 If the current device isn't provisioned, this function will
 provision it.
 */
  public func paperProvision(username: String, deviceName: String, paperKey: String) throws {
    let args: [String: Any] = ["username": username, "deviceName": deviceName, "paperKey": paperKey]
    _ = try self.sendRequest(method: "keybase.1.paperprovision.paperProvision", args: args)
  }

}