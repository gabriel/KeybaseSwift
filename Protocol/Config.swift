//
// This file is autogenerated
//

//
//  Config.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Config
//


public class GetCurrentStatusRes {

	public let configured: Bool
	public let registered: Bool
	public let loggedIn: Bool
	public let sessionIsValid: Bool
	public let user: User?

  public init(configured: Bool, registered: Bool, loggedIn: Bool, sessionIsValid: Bool, user: User?) {
    self.configured = configured
		self.registered = registered
		self.loggedIn = loggedIn
		self.sessionIsValid = sessionIsValid
		self.user = user
  }

  public class func fromJSON(json: JSON) -> GetCurrentStatusRes {
    return GetCurrentStatusRes(configured: json["configured"].boolValue, registered: json["registered"].boolValue, loggedIn: json["loggedIn"].boolValue, sessionIsValid: json["sessionIsValid"].boolValue, user: User.fromJSON(json["user"]))
  }

  public class func fromJSONArray(json: [JSON]) -> [GetCurrentStatusRes] {
    return json.map { fromJSON($0) }
  }
}


public class SessionStatus {

	public let SessionFor: String
	public let Loaded: Bool
	public let Cleared: Bool
	public let SaltOnly: Bool
	public let Expired: Bool

  public init(SessionFor: String, Loaded: Bool, Cleared: Bool, SaltOnly: Bool, Expired: Bool) {
    self.SessionFor = SessionFor
		self.Loaded = Loaded
		self.Cleared = Cleared
		self.SaltOnly = SaltOnly
		self.Expired = Expired
  }

  public class func fromJSON(json: JSON) -> SessionStatus {
    return SessionStatus(SessionFor: json["SessionFor"].stringValue, Loaded: json["Loaded"].boolValue, Cleared: json["Cleared"].boolValue, SaltOnly: json["SaltOnly"].boolValue, Expired: json["Expired"].boolValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [SessionStatus] {
    return json.map { fromJSON($0) }
  }
}


public class ClientDetails {

	public let pid: Int
	public let clientType: ClientType
	public let argv: [String]
	public let desc: String
	public let version: String

  public init(pid: Int, clientType: ClientType, argv: [String], desc: String, version: String) {
    self.pid = pid
		self.clientType = clientType
		self.argv = argv
		self.desc = desc
		self.version = version
  }

  public class func fromJSON(json: JSON) -> ClientDetails {
    return ClientDetails(pid: json["pid"].intValue, clientType: ClientType(rawValue: json["clientType"].intValue)!, argv: String.fromJSONArray(json["argv"].arrayValue), desc: json["desc"].stringValue, version: json["version"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [ClientDetails] {
    return json.map { fromJSON($0) }
  }
}


public class PlatformInfo {

	public let os: String
	public let arch: String
	public let goVersion: String

  public init(os: String, arch: String, goVersion: String) {
    self.os = os
		self.arch = arch
		self.goVersion = goVersion
  }

  public class func fromJSON(json: JSON) -> PlatformInfo {
    return PlatformInfo(os: json["os"].stringValue, arch: json["arch"].stringValue, goVersion: json["goVersion"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [PlatformInfo] {
    return json.map { fromJSON($0) }
  }
}


public class ExtendedStatus {

	public let standalone: Bool
	public let passphraseStreamCached: Bool
	public let lksecLoaded: Bool
	public let device: Device?
	public let logDir: String
	public let session: SessionStatus?
	public let defaultUsername: String
	public let provisionedUsernames: [String]
	public let Clients: [ClientDetails]
	public let platformInfo: PlatformInfo

  public init(standalone: Bool, passphraseStreamCached: Bool, lksecLoaded: Bool, device: Device?, logDir: String, session: SessionStatus?, defaultUsername: String, provisionedUsernames: [String], Clients: [ClientDetails], platformInfo: PlatformInfo) {
    self.standalone = standalone
		self.passphraseStreamCached = passphraseStreamCached
		self.lksecLoaded = lksecLoaded
		self.device = device
		self.logDir = logDir
		self.session = session
		self.defaultUsername = defaultUsername
		self.provisionedUsernames = provisionedUsernames
		self.Clients = Clients
		self.platformInfo = platformInfo
  }

  public class func fromJSON(json: JSON) -> ExtendedStatus {
    return ExtendedStatus(standalone: json["standalone"].boolValue, passphraseStreamCached: json["passphraseStreamCached"].boolValue, lksecLoaded: json["lksecLoaded"].boolValue, device: Device.fromJSON(json["device"]), logDir: json["logDir"].stringValue, session: SessionStatus.fromJSON(json["session"]), defaultUsername: json["defaultUsername"].stringValue, provisionedUsernames: String.fromJSONArray(json["provisionedUsernames"].arrayValue), Clients: ClientDetails.fromJSONArray(json["Clients"].arrayValue), platformInfo: PlatformInfo.fromJSON(json["platformInfo"]))
  }

  public class func fromJSONArray(json: [JSON]) -> [ExtendedStatus] {
    return json.map { fromJSON($0) }
  }
}

public enum ForkType: Int {
	case None = 0
	case Auto = 1
	case Watchdog = 2
	case Launchd = 3
}


public class Config {

	public let serverURI: String
	public let socketFile: String
	public let label: String
	public let runMode: String
	public let gpgExists: Bool
	public let gpgPath: String
	public let version: String
	public let path: String
	public let configPath: String
	public let versionShort: String
	public let versionFull: String
	public let isAutoForked: Bool
	public let forkType: ForkType

  public init(serverURI: String, socketFile: String, label: String, runMode: String, gpgExists: Bool, gpgPath: String, version: String, path: String, configPath: String, versionShort: String, versionFull: String, isAutoForked: Bool, forkType: ForkType) {
    self.serverURI = serverURI
		self.socketFile = socketFile
		self.label = label
		self.runMode = runMode
		self.gpgExists = gpgExists
		self.gpgPath = gpgPath
		self.version = version
		self.path = path
		self.configPath = configPath
		self.versionShort = versionShort
		self.versionFull = versionFull
		self.isAutoForked = isAutoForked
		self.forkType = forkType
  }

  public class func fromJSON(json: JSON) -> Config {
    return Config(serverURI: json["serverURI"].stringValue, socketFile: json["socketFile"].stringValue, label: json["label"].stringValue, runMode: json["runMode"].stringValue, gpgExists: json["gpgExists"].boolValue, gpgPath: json["gpgPath"].stringValue, version: json["version"].stringValue, path: json["path"].stringValue, configPath: json["configPath"].stringValue, versionShort: json["versionShort"].stringValue, versionFull: json["versionFull"].stringValue, isAutoForked: json["isAutoForked"].boolValue, forkType: ForkType(rawValue: json["forkType"].intValue)!)
  }

  public class func fromJSONArray(json: [JSON]) -> [Config] {
    return json.map { fromJSON($0) }
  }
}


public class ConfigValue {

	public let isNull: Bool
	public let b: Bool?
	public let i: Int?
	public let s: String?
	public let o: String?

  public init(isNull: Bool, b: Bool?, i: Int?, s: String?, o: String?) {
    self.isNull = isNull
		self.b = b
		self.i = i
		self.s = s
		self.o = o
  }

  public class func fromJSON(json: JSON) -> ConfigValue {
    return ConfigValue(isNull: json["isNull"].boolValue, b: json["b"].boolValue, i: json["i"].intValue, s: json["s"].stringValue, o: json["o"].stringValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [ConfigValue] {
    return json.map { fromJSON($0) }
  }
}