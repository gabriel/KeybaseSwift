//
// This file is autogenerated
//

//
//  ProveUiRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// ProveUi
//

public class ProveUiRequest: Request {

  public func promptOverwrite(account: String, typ: PromptOverwriteType) throws -> Bool {
    let args: [String: AnyObject] = ["account": account, "typ": typ.rawValue]
    let response = try self.sendRequest("keybase.1.proveUi.promptOverwrite", args: args)
    try checkNull(response)
    return JSON(response).boolValue
  }

  public func promptUsername(prompt: String, prevError: Status?) throws -> String {
    let args: [String: AnyObject] = ["prompt": prompt, "prevError": wrapNull(prevError)]
    let response = try self.sendRequest("keybase.1.proveUi.promptUsername", args: args)
    try checkNull(response)
    return JSON(response).stringValue
  }

  public func outputPrechecks(text: Text) throws {
    let args: [String: AnyObject] = ["text": text]
    try self.sendRequest("keybase.1.proveUi.outputPrechecks", args: args)
  }

  public func preProofWarning(text: Text) throws -> Bool {
    let args: [String: AnyObject] = ["text": text]
    let response = try self.sendRequest("keybase.1.proveUi.preProofWarning", args: args)
    try checkNull(response)
    return JSON(response).boolValue
  }

  public func outputInstructions(instructions: Text, proof: String) throws {
    let args: [String: AnyObject] = ["instructions": instructions, "proof": proof]
    try self.sendRequest("keybase.1.proveUi.outputInstructions", args: args)
  }

  public func okToCheck(name: String, attempt: Int) throws -> Bool {
    let args: [String: AnyObject] = ["name": name, "attempt": NSNumber(integer: attempt)]
    let response = try self.sendRequest("keybase.1.proveUi.okToCheck", args: args)
    try checkNull(response)
    return JSON(response).boolValue
  }

  public func displayRecheckWarning(text: Text) throws {
    let args: [String: AnyObject] = ["text": text]
    try self.sendRequest("keybase.1.proveUi.displayRecheckWarning", args: args)
  }

}