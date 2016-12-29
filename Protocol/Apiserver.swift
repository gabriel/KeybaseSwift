//
// This file is autogenerated
//

//
//  Apiserver.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Apiserver
//


public class APIRes {

	public let status: String?
	public let body: String?
	public let httpStatus: Int?
	public let appStatus: String?

  public init(status: String, body: String, httpStatus: Int, appStatus: String) {
    self.status = status
		self.body = body
		self.httpStatus = httpStatus
		self.appStatus = appStatus
  }

  public class func fromJSON(_ json: JSON) -> APIRes {
    return APIRes(status: json["status"].stringValue, body: json["body"].stringValue, httpStatus: json["httpStatus"].intValue, appStatus: json["appStatus"].stringValue)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [APIRes] {
    return json.map { fromJSON($0) }
  }

}

