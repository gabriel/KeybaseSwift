//
// This file is autogenerated
//

//
//  Login.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Login
//


public class ConfiguredAccount {

	public let username: String?
	public let hasStoredSecret: Bool?

  public init(username: String, hasStoredSecret: Bool) {
    self.username = username
		self.hasStoredSecret = hasStoredSecret
  }

  public class func fromJSON(_ json: JSON) -> ConfiguredAccount {
    return ConfiguredAccount(username: json["username"].stringValue, hasStoredSecret: json["hasStoredSecret"].boolValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [ConfiguredAccount] {
    return json.map { fromJSON($0) }
  }

}

