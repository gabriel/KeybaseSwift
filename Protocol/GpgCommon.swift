//
// This file is autogenerated
//

//
//  GpgCommon.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// GpgCommon
//


public class GPGKey {

	public let algorithm: String?
	public let keyID: String?
	public let creation: String?
	public let expiration: String?
	public let identities: [PGPIdentity]?

  public init(algorithm: String, keyID: String, creation: String, expiration: String, identities: [PGPIdentity]) {
    self.algorithm = algorithm
		self.keyID = keyID
		self.creation = creation
		self.expiration = expiration
		self.identities = identities
  }

  public class func fromJSON(_ json: JSON) -> GPGKey {
    return GPGKey(algorithm: json["algorithm"].stringValue, keyID: json["keyID"].stringValue, creation: json["creation"].stringValue, expiration: json["expiration"].stringValue, identities: PGPIdentity.fromJSONArray(json["identities"].arrayValue))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [GPGKey] {
    return json.map { fromJSON($0) }
  }

}
