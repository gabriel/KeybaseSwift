//
// This file is autogenerated
//

//
//  Install.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Install
//

public enum InstallStatus: Int {
	case unknown = 0
	case error = 1
	case notInstalled = 2
	case installed = 4
}

public enum InstallAction: Int {
	case unknown = 0
	case none = 1
	case upgrade = 2
	case reinstall = 3
	case install = 4
}


public class ServiceStatus {

	public let version: String?
	public let label: String?
	public let pid: String?
	public let lastExitStatus: String?
	public let bundleVersion: String?
	public let installStatus: InstallStatus?
	public let installAction: InstallAction?
	public let status: Status?

  public init(version: String, label: String, pid: String, lastExitStatus: String, bundleVersion: String, installStatus: InstallStatus, installAction: InstallAction, status: Status) {
    self.version = version
		self.label = label
		self.pid = pid
		self.lastExitStatus = lastExitStatus
		self.bundleVersion = bundleVersion
		self.installStatus = installStatus
		self.installAction = installAction
		self.status = status
  }

  public class func fromJSON(_ json: JSON) -> ServiceStatus {
    return ServiceStatus(version: json["version"].stringValue, label: json["label"].stringValue, pid: json["pid"].stringValue, lastExitStatus: json["lastExitStatus"].stringValue, bundleVersion: json["bundleVersion"].stringValue, installStatus: InstallStatus(rawValue: json["installStatus"].intValue)!, installAction: InstallAction(rawValue: json["installAction"].intValue)!, status: Status.fromJSON(json["status"]))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [ServiceStatus] {
    return json.map { fromJSON($0) }
  }

}



public class ServicesStatus {

	public let service: [ServiceStatus]?
	public let kbfs: [ServiceStatus]?
	public let updater: [ServiceStatus]?

  public init(service: [ServiceStatus], kbfs: [ServiceStatus], updater: [ServiceStatus]) {
    self.service = service
		self.kbfs = kbfs
		self.updater = updater
  }

  public class func fromJSON(_ json: JSON) -> ServicesStatus {
    return ServicesStatus(service: ServiceStatus.fromJSONArray(json["service"].arrayValue), kbfs: ServiceStatus.fromJSONArray(json["kbfs"].arrayValue), updater: ServiceStatus.fromJSONArray(json["updater"].arrayValue))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [ServicesStatus] {
    return json.map { fromJSON($0) }
  }

}



public class FuseMountInfo {

	public let path: String?
	public let fstype: String?
	public let output: String?

  public init(path: String, fstype: String, output: String) {
    self.path = path
		self.fstype = fstype
		self.output = output
  }

  public class func fromJSON(_ json: JSON) -> FuseMountInfo {
    return FuseMountInfo(path: json["path"].stringValue, fstype: json["fstype"].stringValue, output: json["output"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [FuseMountInfo] {
    return json.map { fromJSON($0) }
  }

}



public class FuseStatus {

	public let version: String?
	public let bundleVersion: String?
	public let kextID: String?
	public let path: String?
	public let kextStarted: Bool?
	public let installStatus: InstallStatus?
	public let installAction: InstallAction?
	public let mountInfos: [FuseMountInfo]?
	public let status: Status?

  public init(version: String, bundleVersion: String, kextID: String, path: String, kextStarted: Bool, installStatus: InstallStatus, installAction: InstallAction, mountInfos: [FuseMountInfo], status: Status) {
    self.version = version
		self.bundleVersion = bundleVersion
		self.kextID = kextID
		self.path = path
		self.kextStarted = kextStarted
		self.installStatus = installStatus
		self.installAction = installAction
		self.mountInfos = mountInfos
		self.status = status
  }

  public class func fromJSON(_ json: JSON) -> FuseStatus {
    return FuseStatus(version: json["version"].stringValue, bundleVersion: json["bundleVersion"].stringValue, kextID: json["kextID"].stringValue, path: json["path"].stringValue, kextStarted: json["kextStarted"].boolValue, installStatus: InstallStatus(rawValue: json["installStatus"].intValue)!, installAction: InstallAction(rawValue: json["installAction"].intValue)!, mountInfos: FuseMountInfo.fromJSONArray(json["mountInfos"].arrayValue), status: Status.fromJSON(json["status"]))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [FuseStatus] {
    return json.map { fromJSON($0) }
  }

}



public class ComponentResult {

	public let name: String?
	public let status: Status?

  public init(name: String, status: Status) {
    self.name = name
		self.status = status
  }

  public class func fromJSON(_ json: JSON) -> ComponentResult {
    return ComponentResult(name: json["name"].stringValue, status: Status.fromJSON(json["status"]))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [ComponentResult] {
    return json.map { fromJSON($0) }
  }

}



public class InstallResult {

	public let componentResults: [ComponentResult]?
	public let status: Status?
	public let fatal: Bool?

  public init(componentResults: [ComponentResult], status: Status, fatal: Bool) {
    self.componentResults = componentResults
		self.status = status
		self.fatal = fatal
  }

  public class func fromJSON(_ json: JSON) -> InstallResult {
    return InstallResult(componentResults: ComponentResult.fromJSONArray(json["componentResults"].arrayValue), status: Status.fromJSON(json["status"]), fatal: json["fatal"].boolValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [InstallResult] {
    return json.map { fromJSON($0) }
  }

}



public class UninstallResult {

	public let componentResults: [ComponentResult]?
	public let status: Status?

  public init(componentResults: [ComponentResult], status: Status) {
    self.componentResults = componentResults
		self.status = status
  }

  public class func fromJSON(_ json: JSON) -> UninstallResult {
    return UninstallResult(componentResults: ComponentResult.fromJSONArray(json["componentResults"].arrayValue), status: Status.fromJSON(json["status"]))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [UninstallResult] {
    return json.map { fromJSON($0) }
  }

}

