//
// This file is autogenerated
//

//
//  SecretKeysRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// SecretKeys
//

public class SecretKeysRequest: Request {

  public func getSecretKeys() throws -> SecretKeys {
    let args: [String: Any] = [String: Any]()
    let response = try self.sendRequest(method: "keybase.1.SecretKeys.getSecretKeys", args: args)
    try checkNull(response: response)
    return SecretKeys.fromJSON(JSON(response))
  }

}
