//
// This file is autogenerated
//

//
//  ProveRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Prove
//

public class ProveRequest: Request {

  public func startProof(service: String, username: String, force: Bool, promptPosted: Bool, auto: Bool) throws -> StartProofResult {
    let args: [String: Any] = ["service": service, "username": username, "force": force, "promptPosted": promptPosted, "auto": auto]
    let response = try self.sendRequest(method: "keybase.1.prove.startProof", args: args)
    try checkNull(response: response)
    return StartProofResult.fromJSON(JSON(response))
  }

  public func checkProof(sigID: String) throws -> CheckProofStatus {
    let args: [String: Any] = ["sigID": sigID]
    let response = try self.sendRequest(method: "keybase.1.prove.checkProof", args: args)
    try checkNull(response: response)
    return CheckProofStatus.fromJSON(JSON(response))
  }

}
