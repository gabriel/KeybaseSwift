//
// This file is autogenerated
//

//
//  Saltpack.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Saltpack
//


public class SaltpackEncryptOptions {

	public let recipients: [String]
	public let hideSelf: Bool
	public let noSelfEncrypt: Bool
	public let binary: Bool
	public let hideRecipients: Bool

  public init(recipients: [String], hideSelf: Bool, noSelfEncrypt: Bool, binary: Bool, hideRecipients: Bool) {
    self.recipients = recipients
		self.hideSelf = hideSelf
		self.noSelfEncrypt = noSelfEncrypt
		self.binary = binary
		self.hideRecipients = hideRecipients
  }

  public class func fromJSON(json: JSON) -> SaltpackEncryptOptions {
    return SaltpackEncryptOptions(recipients: String.fromJSONArray(json["recipients"].arrayValue), hideSelf: json["hideSelf"].boolValue, noSelfEncrypt: json["noSelfEncrypt"].boolValue, binary: json["binary"].boolValue, hideRecipients: json["hideRecipients"].boolValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [SaltpackEncryptOptions] {
    return json.map { fromJSON($0) }
  }
}


public class SaltpackDecryptOptions {

	public let interactive: Bool
	public let forceRemoteCheck: Bool
	public let usePaperKey: Bool

  public init(interactive: Bool, forceRemoteCheck: Bool, usePaperKey: Bool) {
    self.interactive = interactive
		self.forceRemoteCheck = forceRemoteCheck
		self.usePaperKey = usePaperKey
  }

  public class func fromJSON(json: JSON) -> SaltpackDecryptOptions {
    return SaltpackDecryptOptions(interactive: json["interactive"].boolValue, forceRemoteCheck: json["forceRemoteCheck"].boolValue, usePaperKey: json["usePaperKey"].boolValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [SaltpackDecryptOptions] {
    return json.map { fromJSON($0) }
  }
}


public class SaltpackSignOptions {

	public let detached: Bool
	public let binary: Bool

  public init(detached: Bool, binary: Bool) {
    self.detached = detached
		self.binary = binary
  }

  public class func fromJSON(json: JSON) -> SaltpackSignOptions {
    return SaltpackSignOptions(detached: json["detached"].boolValue, binary: json["binary"].boolValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [SaltpackSignOptions] {
    return json.map { fromJSON($0) }
  }
}


public class SaltpackVerifyOptions {

	public let signedBy: String
	public let signature: NSData

  public init(signedBy: String, signature: NSData) {
    self.signedBy = signedBy
		self.signature = signature
  }

  public class func fromJSON(json: JSON) -> SaltpackVerifyOptions {
    return SaltpackVerifyOptions(signedBy: json["signedBy"].stringValue, signature: json["signature"].object as! NSData)
  }

  public class func fromJSONArray(json: [JSON]) -> [SaltpackVerifyOptions] {
    return json.map { fromJSON($0) }
  }
}


public class SaltpackEncryptedMessageInfo {

	public let devices: [Device]
	public let numAnonReceivers: Int
	public let receiverIsAnon: Bool

  public init(devices: [Device], numAnonReceivers: Int, receiverIsAnon: Bool) {
    self.devices = devices
		self.numAnonReceivers = numAnonReceivers
		self.receiverIsAnon = receiverIsAnon
  }

  public class func fromJSON(json: JSON) -> SaltpackEncryptedMessageInfo {
    return SaltpackEncryptedMessageInfo(devices: Device.fromJSONArray(json["devices"].arrayValue), numAnonReceivers: json["numAnonReceivers"].intValue, receiverIsAnon: json["receiverIsAnon"].boolValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [SaltpackEncryptedMessageInfo] {
    return json.map { fromJSON($0) }
  }
}
