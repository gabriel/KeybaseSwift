//
// This file is autogenerated
//

//
//  AccountRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Account
//

public class AccountRequest: Request {

/*!
 Change the passphrase from old to new. If old isn't set, and force is false,
 then prompt at the UI for it. If old isn't set and force is true, then we'll
 try to force a passphrase change.
 */
  public func passphraseChange(oldPassphrase: String, passphrase: String, force: Bool) throws {
    let args: [String: AnyObject] = ["oldPassphrase": oldPassphrase, "passphrase": passphrase, "force": force]
    try self.sendRequest("keybase.1.account.passphraseChange", args: args)
  }

  public func passphrasePrompt(guiArg: GUIEntryArg) throws -> GetPassphraseRes {
    let args: [String: AnyObject] = ["guiArg": guiArg]
    let response = try self.sendRequest("keybase.1.account.passphrasePrompt", args: args)
    try checkNull(response)
    return GetPassphraseRes.fromJSON(JSON(response))
  }

}
