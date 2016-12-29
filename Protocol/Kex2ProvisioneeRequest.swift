//
// This file is autogenerated
//

//
//  Kex2ProvisioneeRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Kex2Provisionee
//

public class Kex2ProvisioneeRequest: Request {

  public func hello(uid: String, token: String, csrf: String, pps: PassphraseStream, sigBody: String) throws -> String {
    let args: [String: Any] = ["uid": uid, "token": token, "csrf": csrf, "pps": pps, "sigBody": sigBody]
    let response = try self.sendRequest(method: "keybase.1.Kex2Provisionee.hello", args: args)
    try checkNull(response: response)
    return JSON(response).stringValue
  }

  public func didCounterSign(sig: NSData) throws {
    let args: [String: Any] = ["sig": sig]
    _ = try self.sendRequest(method: "keybase.1.Kex2Provisionee.didCounterSign", args: args)
  }

}
