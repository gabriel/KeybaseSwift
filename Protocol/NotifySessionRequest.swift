//
// This file is autogenerated
//

//
//  NotifySessionRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// NotifySession
//

public class NotifySessionRequest: Request {

  public func loggedOut() throws {
    let args: [String: Any] = [String: Any]()
    _ = try self.sendRequest(method: "keybase.1.NotifySession.loggedOut", args: args)
  }

  public func loggedIn(username: String) throws {
    let args: [String: Any] = ["username": username]
    _ = try self.sendRequest(method: "keybase.1.NotifySession.loggedIn", args: args)
  }

  public func clientOutOfDate(upgradeTo: String, upgradeURI: String, upgradeMsg: String) throws {
    let args: [String: Any] = ["upgradeTo": upgradeTo, "upgradeURI": upgradeURI, "upgradeMsg": upgradeMsg]
    _ = try self.sendRequest(method: "keybase.1.NotifySession.clientOutOfDate", args: args)
  }

}
