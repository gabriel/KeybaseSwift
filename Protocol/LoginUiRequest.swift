//
// This file is autogenerated
//

//
//  LoginUIRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// LoginUI
//

public class LoginUIRequest: Request {

  public func getEmailOrUsername() throws -> String {
    let args: [String: Any] = [String: Any]()
    let response = try self.sendRequest(method: "keybase.1.loginUi.getEmailOrUsername", args: args)
    try checkNull(response: response)
    return JSON(response).stringValue
  }

  public func promptRevokePaperKeys(device: Device, index: Int) throws -> Bool {
    let args: [String: Any] = ["device": device, "index": NSNumber(value: index)]
    let response = try self.sendRequest(method: "keybase.1.loginUi.promptRevokePaperKeys", args: args)
    try checkNull(response: response)
    return JSON(response).boolValue
  }

  public func displayPaperKeyPhrase(phrase: String) throws {
    let args: [String: Any] = ["phrase": phrase]
    _ = try self.sendRequest(method: "keybase.1.loginUi.displayPaperKeyPhrase", args: args)
  }

  public func displayPrimaryPaperKey(phrase: String) throws {
    let args: [String: Any] = ["phrase": phrase]
    _ = try self.sendRequest(method: "keybase.1.loginUi.displayPrimaryPaperKey", args: args)
  }

}
