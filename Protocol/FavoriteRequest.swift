//
// This file is autogenerated
//

//
//  FavoriteRequest.swift
//  Keybase
//  Copyright © 2015 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Favorite
//

public class FavoriteRequest: Request {

/*!
 Adds a folder to a user's list of favorite folders.
 */
  public func favoriteAdd(folder: Folder) throws {
    let args: [String: AnyObject] = ["folder": folder]
    try self.sendRequest("keybase.1.favorite.favoriteAdd", args: args)
  }

/*!
 Removes a folder from a user's list of favorite folders.
 */
  public func favoriteDelete(folder: Folder) throws {
    let args: [String: AnyObject] = ["folder": folder]
    try self.sendRequest("keybase.1.favorite.favoriteDelete", args: args)
  }

/*!
 Returns all of a user's favorite folders.
 */
  public func favoriteList() throws -> [Folder] {
    let args: [String: AnyObject] = [String: AnyObject]()
    let response = try self.sendRequest("keybase.1.favorite.favoriteList", args: args)
  try checkNull(response)
  return Folder.fromJSONArray(JSON(response).arrayValue)
  }

}
