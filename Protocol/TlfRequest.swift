//
// This file is autogenerated
//

//
//  TlfRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Tlf
//

public class TlfRequest: Request {

/*!
 CryptKeys returns TLF crypt keys from all generations.
 */
  public func cryptKeys(query: TLFQuery) throws -> GetTLFCryptKeysRes {
    let args: [String: Any] = ["query": query]
    let response = try self.sendRequest(method: "keybase.1.tlf.CryptKeys", args: args)
    try checkNull(response: response)
    return GetTLFCryptKeysRes.fromJSON(JSON(response))
  }

/*!
 * tlfCanonicalID returns the canonical name and TLFID for tlfName.
 * TLFID should not be cached or stored persistently.
 */
  public func publicCanonicalTLFNameAndID(query: TLFQuery) throws -> CanonicalTLFNameAndIDWithBreaks {
    let args: [String: Any] = ["query": query]
    let response = try self.sendRequest(method: "keybase.1.tlf.publicCanonicalTLFNameAndID", args: args)
    try checkNull(response: response)
    return CanonicalTLFNameAndIDWithBreaks.fromJSON(JSON(response))
  }

  public func completeAndCanonicalizePrivateTlfName(query: TLFQuery) throws -> CanonicalTLFNameAndIDWithBreaks {
    let args: [String: Any] = ["query": query]
    let response = try self.sendRequest(method: "keybase.1.tlf.completeAndCanonicalizePrivateTlfName", args: args)
    try checkNull(response: response)
    return CanonicalTLFNameAndIDWithBreaks.fromJSON(JSON(response))
  }

}
