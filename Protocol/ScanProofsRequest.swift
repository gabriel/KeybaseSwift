//
// This file is autogenerated
//

//
//  ScanProofsRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// ScanProofs
//

public class ScanProofsRequest: Request {

  public func scanProofs(infile: String, indices: String, sigid: String, ratelimit: Int, cachefile: String, ignorefile: String) throws {
    let args: [String: Any] = ["infile": infile, "indices": indices, "sigid": sigid, "ratelimit": NSNumber(value: ratelimit), "cachefile": cachefile, "ignorefile": ignorefile]
    _ = try self.sendRequest(method: "keybase.1.ScanProofs.scanProofs", args: args)
  }

}
