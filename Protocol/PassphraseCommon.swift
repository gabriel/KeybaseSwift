//
// This file is autogenerated
//

//
//  PassphraseCommon.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// PassphraseCommon
//


public class Feature {

	public let allow: Bool?
	public let defaultValue: Bool?
	public let readonly: Bool?
	public let label: String?

  public init(allow: Bool, defaultValue: Bool, readonly: Bool, label: String) {
    self.allow = allow
		self.defaultValue = defaultValue
		self.readonly = readonly
		self.label = label
  }

  public class func fromJSON(_ json: JSON) -> Feature {
    return Feature(allow: json["allow"].boolValue, defaultValue: json["defaultValue"].boolValue, readonly: json["readonly"].boolValue, label: json["label"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [Feature] {
    return json.map { fromJSON($0) }
  }

}



public class GUIEntryFeatures {

	public let showTyping: Feature?

  public init(showTyping: Feature) {
    self.showTyping = showTyping
  }

  public class func fromJSON(_ json: JSON) -> GUIEntryFeatures {
    return GUIEntryFeatures(showTyping: Feature.fromJSON(json["showTyping"]))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [GUIEntryFeatures] {
    return json.map { fromJSON($0) }
  }

}


public enum PassphraseType: Int {
	case none = 0
	case paperKey = 1
	case passPhrase = 2
	case verifyPassPhrase = 3
}


public class GUIEntryArg {

	public let windowTitle: String?
	public let prompt: String?
	public let username: String?
	public let submitLabel: String?
	public let cancelLabel: String?
	public let retryLabel: String?
	public let type: PassphraseType?
	public let features: GUIEntryFeatures?

  public init(windowTitle: String, prompt: String, username: String, submitLabel: String, cancelLabel: String, retryLabel: String, type: PassphraseType, features: GUIEntryFeatures) {
    self.windowTitle = windowTitle
		self.prompt = prompt
		self.username = username
		self.submitLabel = submitLabel
		self.cancelLabel = cancelLabel
		self.retryLabel = retryLabel
		self.type = type
		self.features = features
  }

  public class func fromJSON(_ json: JSON) -> GUIEntryArg {
    return GUIEntryArg(windowTitle: json["windowTitle"].stringValue, prompt: json["prompt"].stringValue, username: json["username"].stringValue, submitLabel: json["submitLabel"].stringValue, cancelLabel: json["cancelLabel"].stringValue, retryLabel: json["retryLabel"].stringValue, type: PassphraseType(rawValue: json["type"].intValue)!, features: GUIEntryFeatures.fromJSON(json["features"]))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [GUIEntryArg] {
    return json.map { fromJSON($0) }
  }

}



public class GetPassphraseRes {

	public let passphrase: String?
	public let storeSecret: Bool?

  public init(passphrase: String, storeSecret: Bool) {
    self.passphrase = passphrase
		self.storeSecret = storeSecret
  }

  public class func fromJSON(_ json: JSON) -> GetPassphraseRes {
    return GetPassphraseRes(passphrase: json["passphrase"].stringValue, storeSecret: json["storeSecret"].boolValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [GetPassphraseRes] {
    return json.map { fromJSON($0) }
  }

}

