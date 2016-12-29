//
// This file is autogenerated
//

//
//  DeviceRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Device
//

public class DeviceRequest: Request {

/*!
 List devices for the user.
 */
  public func deviceList() throws -> [Device] {
    let args: [String: Any] = [String: Any]()
    let response = try self.sendRequest(method: "keybase.1.device.deviceList", args: args)
  try checkNull(response: response)
  return Device.fromJSONArray(JSON(response).arrayValue)
  }

/*!
 List all devices with detailed history and status information.
 */
  public func deviceHistoryList() throws -> [DeviceDetail] {
    let args: [String: Any] = [String: Any]()
    let response = try self.sendRequest(method: "keybase.1.device.deviceHistoryList", args: args)
  try checkNull(response: response)
  return DeviceDetail.fromJSONArray(JSON(response).arrayValue)
  }

/*!
 Starts the process of adding a new device using an existing
 device. It is called on the existing device.
 This is for kex2.
 */
  public func deviceAdd() throws {
    let args: [String: Any] = [String: Any]()
    _ = try self.sendRequest(method: "keybase.1.device.deviceAdd", args: args)
  }

/*!
 Checks the device name format.
 */
  public func checkDeviceNameFormat(name: String) throws -> Bool {
    let args: [String: Any] = ["name": name]
    let response = try self.sendRequest(method: "keybase.1.device.checkDeviceNameFormat", args: args)
    try checkNull(response: response)
    return JSON(response).boolValue
  }

/*!
 Checks a given device against all of user's past devices,
 including those that predate a reset. It will also check a device name
 for proper formatting. Return null error on success, and a non-null
 error otherwise.
 */
  public func checkDeviceNameForUser(username: String, devicename: String) throws {
    let args: [String: Any] = ["username": username, "devicename": devicename]
    _ = try self.sendRequest(method: "keybase.1.device.checkDeviceNameForUser", args: args)
  }

}
