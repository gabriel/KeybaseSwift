//
// This file is autogenerated
//

//
//  KbfsRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Kbfs
//

public class KbfsRequest: Request {

/*!
 Idea is that kbfs would call the function below whenever these actions are
 performed on a file.

 Note that this list/interface is very temporary and highly likely to change
 significantly.

 It is just a starting point to get kbfs notifications through the daemon to
 the clients.
 */
  public func fSEvent(event: FSNotification) throws {
    let args: [String: Any] = ["event": event]
    _ = try self.sendRequest(method: "keybase.1.kbfs.FSEvent", args: args)
  }

/*!
 kbfs calls this as a response to receiving an FSEditListRequest with a
 given requestID.
 */
  public func fSEditList(edits: [FSNotification], requestID: Int) throws {
    let args: [String: Any] = ["edits": edits, "requestID": NSNumber(value: requestID)]
    _ = try self.sendRequest(method: "keybase.1.kbfs.FSEditList", args: args)
  }

/*!
 FSSyncStatus is called by KBFS as a response to receiving an
 FSSyncStatusRequest with a given requestID.
 */
  public func fSSyncStatus(status: FSSyncStatus, requestID: Int) throws {
    let args: [String: Any] = ["status": status, "requestID": NSNumber(value: requestID)]
    _ = try self.sendRequest(method: "keybase.1.kbfs.FSSyncStatus", args: args)
  }

/*!
 FSSyncEvent is called by KBFS when the sync status of an individual path
 changes.
 */
  public func fSSyncEvent(event: FSPathSyncStatus) throws {
    let args: [String: Any] = ["event": event]
    _ = try self.sendRequest(method: "keybase.1.kbfs.FSSyncEvent", args: args)
  }

}
