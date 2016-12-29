//
// This file is autogenerated
//

//
//  SecretUIRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// SecretUI
//

public class SecretUIRequest: Request {

  public func getPassphrase(pinentry: GUIEntryArg, terminal: SecretEntryArg?) throws -> GetPassphraseRes {
    let args: [String: Any] = ["pinentry": pinentry, "terminal": wrapNull(terminal)]
    let response = try self.sendRequest(method: "keybase.1.secretUi.getPassphrase", args: args)
    try checkNull(response: response)
    return GetPassphraseRes.fromJSON(JSON(response))
  }

}
