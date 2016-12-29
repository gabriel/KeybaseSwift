//
// This file is autogenerated
//

//
//  NotifyPGPRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// NotifyPGP
//

public class NotifyPGPRequest: Request {

  public func pgpKeyInSecretStoreFile() throws {
    let args: [String: Any] = [String: Any]()
    _ = try self.sendRequest(method: "keybase.1.NotifyPGP.pgpKeyInSecretStoreFile", args: args)
  }

}