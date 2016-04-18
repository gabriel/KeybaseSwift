//
// This file is autogenerated
//

//
//  Kex2Provisionee.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Kex2Provisionee
//


public class PassphraseStream {

	public let passphraseStream: NSData
	public let generation: Int

  public init(passphraseStream: NSData, generation: Int) {
    self.passphraseStream = passphraseStream
		self.generation = generation
  }

  public class func fromJSON(json: JSON) -> PassphraseStream {
    return PassphraseStream(passphraseStream: json["passphraseStream"].object as! NSData, generation: json["generation"].intValue)
  }

  public class func fromJSONArray(json: [JSON]) -> [PassphraseStream] {
    return json.map { fromJSON($0) }
  }
}

public typealias SessionToken = String
public typealias CsrfToken = String
public typealias HelloRes = String