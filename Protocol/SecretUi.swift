//
// This file is autogenerated
//

//
//  SecretUi.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// SecretUi
//


public class SecretEntryArg {

	public let desc: String
	public let prompt: String
	public let err: String
	public let cancel: String
	public let ok: String
	public let reason: String
	public let useSecretStore: Bool

  public init(desc: String, prompt: String, err: String, cancel: String, ok: String, reason: String, useSecretStore: Bool) {
    self.desc = desc
		self.prompt = prompt
		self.err = err
		self.cancel = cancel
		self.ok = ok
		self.reason = reason
		self.useSecretStore = useSecretStore
  }

  public class func fromJSON(json: JSON) -> SecretEntryArg {
    return SecretEntryArg(desc: json["desc"].stringValue, prompt: json["prompt"].stringValue, err: json["err"].stringValue, cancel: json["cancel"].stringValue, ok: json["ok"].stringValue, reason: json["reason"].stringValue, useSecretStore: json["useSecretStore"].boolValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [SecretEntryArg] {
    return json.map { fromJSON($0) }
  }
}


public class SecretEntryRes {

	public let text: String
	public let canceled: Bool
	public let storeSecret: Bool

  public init(text: String, canceled: Bool, storeSecret: Bool) {
    self.text = text
		self.canceled = canceled
		self.storeSecret = storeSecret
  }

  public class func fromJSON(json: JSON) -> SecretEntryRes {
    return SecretEntryRes(text: json["text"].stringValue, canceled: json["canceled"].boolValue, storeSecret: json["storeSecret"].boolValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [SecretEntryRes] {
    return json.map { fromJSON($0) }
  }
}
