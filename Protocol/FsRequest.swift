//
// This file is autogenerated
//

//
//  FsRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Fs
//

public class FsRequest: Request {

/*!
 List files in a path. Implemented by KBFS service.
 */
  public func list(path: String) throws -> ListResult {
    let args: [String: Any] = ["path": path]
    let response = try self.sendRequest(method: "keybase.1.fs.List", args: args)
    try checkNull(response: response)
    return ListResult.fromJSON(JSON(response))
  }

}
