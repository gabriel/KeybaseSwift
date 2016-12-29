//
// This file is autogenerated
//

//
//  Metadata.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Metadata
//


public class KeyHalf {

	public let user: String?
	public let deviceKID: String?
	public let key: NSData?

  public init(user: String, deviceKID: String, key: NSData) {
    self.user = user
		self.deviceKID = deviceKID
		self.key = key
  }

  public class func fromJSON(_ json: JSON) -> KeyHalf {
    return KeyHalf(user: json["user"].stringValue, deviceKID: json["deviceKID"].stringValue, key: json["key"].object as! NSData)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [KeyHalf] {
    return json.map { fromJSON($0) }
  }

}



public class MDBlock {

	public let version: Int?
	public let timestamp: Int64?
	public let block: NSData?

  public init(version: Int, timestamp: Int64, block: NSData) {
    self.version = version
		self.timestamp = timestamp
		self.block = block
  }

  public class func fromJSON(_ json: JSON) -> MDBlock {
    return MDBlock(version: json["version"].intValue, timestamp: json["timestamp"].int64Value, block: json["block"].object as! NSData)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [MDBlock] {
    return json.map { fromJSON($0) }
  }

}



public class KeyBundle {

	public let version: Int?
	public let bundle: NSData?

  public init(version: Int, bundle: NSData) {
    self.version = version
		self.bundle = bundle
  }

  public class func fromJSON(_ json: JSON) -> KeyBundle {
    return KeyBundle(version: json["version"].intValue, bundle: json["bundle"].object as! NSData)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [KeyBundle] {
    return json.map { fromJSON($0) }
  }

}



public class MetadataResponse {

	public let folderID: String?
	public let mdBlocks: [MDBlock]?

  public init(folderID: String, mdBlocks: [MDBlock]) {
    self.folderID = folderID
		self.mdBlocks = mdBlocks
  }

  public class func fromJSON(_ json: JSON) -> MetadataResponse {
    return MetadataResponse(folderID: json["folderID"].stringValue, mdBlocks: MDBlock.fromJSONArray(json["mdBlocks"].arrayValue))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [MetadataResponse] {
    return json.map { fromJSON($0) }
  }

}



public class MerkleRoot {

	public let version: Int?
	public let root: NSData?

  public init(version: Int, root: NSData) {
    self.version = version
		self.root = root
  }

  public class func fromJSON(_ json: JSON) -> MerkleRoot {
    return MerkleRoot(version: json["version"].intValue, root: json["root"].object as! NSData)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [MerkleRoot] {
    return json.map { fromJSON($0) }
  }

}



public class PingResponse {

	public let timestamp: Int64?

  public init(timestamp: Int64) {
    self.timestamp = timestamp
  }

  public class func fromJSON(_ json: JSON) -> PingResponse {
    return PingResponse(timestamp: json["timestamp"].int64Value)
  }

  public class func fromJSONArray(_ json: [JSON]) -> [PingResponse] {
    return json.map { fromJSON($0) }
  }

}



public class KeyBundleResponse {

	public let WriterBundle: KeyBundle?
	public let ReaderBundle: KeyBundle?

  public init(WriterBundle: KeyBundle, ReaderBundle: KeyBundle) {
    self.WriterBundle = WriterBundle
		self.ReaderBundle = ReaderBundle
  }

  public class func fromJSON(_ json: JSON) -> KeyBundleResponse {
    return KeyBundleResponse(WriterBundle: KeyBundle.fromJSON(json["WriterBundle"]), ReaderBundle: KeyBundle.fromJSON(json["ReaderBundle"]))
  }

  public class func fromJSONArray(_ json: [JSON]) -> [KeyBundleResponse] {
    return json.map { fromJSON($0) }
  }

}

