//
// This file is autogenerated
//

//
//  NotifyCtlRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// NotifyCtl
//

public class NotifyCtlRequest: Request {

  public func setNotifications(channels: NotificationChannels) throws {
    let args: [String: AnyObject] = ["channels": channels]
    try self.sendRequest("keybase.1.notifyCtl.setNotifications", args: args)
  }

}
