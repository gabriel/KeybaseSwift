//
// This file is autogenerated
//

//
//  DelegateUiCtlRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// DelegateUiCtl
//

public class DelegateUiCtlRequest: Request {

  public func registerIdentifyUI() throws {
    let args: [String: AnyObject] = [String: AnyObject]()
    try self.sendRequest("keybase.1.delegateUiCtl.registerIdentifyUI", args: args)
  }

  public func registerSecretUI() throws {
    let args: [String: AnyObject] = [String: AnyObject]()
    try self.sendRequest("keybase.1.delegateUiCtl.registerSecretUI", args: args)
  }

  public func registerUpdateUI() throws {
    let args: [String: AnyObject] = [String: AnyObject]()
    try self.sendRequest("keybase.1.delegateUiCtl.registerUpdateUI", args: args)
  }

}
