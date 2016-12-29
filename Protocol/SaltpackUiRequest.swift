//
// This file is autogenerated
//

//
//  SaltpackUIRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// SaltpackUI
//

public class SaltpackUIRequest: Request {

  public func saltpackPromptForDecrypt(sender: SaltpackSender, usedDelegateUI: Bool) throws {
    let args: [String: Any] = ["sender": sender, "usedDelegateUI": usedDelegateUI]
    _ = try self.sendRequest(method: "keybase.1.saltpackUi.saltpackPromptForDecrypt", args: args)
  }

  public func saltpackVerifySuccess(signingKID: String, sender: SaltpackSender) throws {
    let args: [String: Any] = ["signingKID": signingKID, "sender": sender]
    _ = try self.sendRequest(method: "keybase.1.saltpackUi.saltpackVerifySuccess", args: args)
  }

}
