//
// This file is autogenerated
//

//
//  Session.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Session
//


public class Session {

	public let uid: String?
	public let username: String?
	public let token: String?
	public let deviceSubkeyKid: String?
	public let deviceSibkeyKid: String?

  public init(uid: String, username: String, token: String, deviceSubkeyKid: String, deviceSibkeyKid: String) {
    self.uid = uid
		self.username = username
		self.token = token
		self.deviceSubkeyKid = deviceSubkeyKid
		self.deviceSibkeyKid = deviceSibkeyKid
  }

  public class func fromJSON(_ json: JSON) -> Session {
    return Session(uid: json["uid"].stringValue, username: json["username"].stringValue, token: json["token"].stringValue, deviceSubkeyKid: json["deviceSubkeyKid"].stringValue, deviceSibkeyKid: json["deviceSibkeyKid"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [Session] {
    return json.map { fromJSON($0) }
  }

}

