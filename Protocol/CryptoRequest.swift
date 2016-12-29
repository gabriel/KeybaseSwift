//
// This file is autogenerated
//

//
//  CryptoRequest.swift
//  Keybase
//  Copyright © 2016 Keybase. All rights reserved.
//

import Foundation
import SwiftyJSON



//
// Crypto
//

public class CryptoRequest: Request {

/*!
 Sign the given message (which should be small) using the device's private
 signing ED25519 key, and return the signature as well as the corresponding
 public key that can be used to verify the signature. The 'reason' parameter
 is used as part of the SecretEntryArg object passed into
 secretUi.getSecret().
 */
  public func signED25519(msg: NSData, reason: String) throws -> ED25519SignatureInfo {
    let args: [String: Any] = ["msg": msg, "reason": reason]
    let response = try self.sendRequest(method: "keybase.1.crypto.signED25519", args: args)
    try checkNull(response: response)
    return ED25519SignatureInfo.fromJSON(JSON(response))
  }

/*!
 Same as the above except a KBFS-specific prefix is added to the payload to be signed.
 */
  public func signED25519ForKBFS(msg: NSData, reason: String) throws -> ED25519SignatureInfo {
    let args: [String: Any] = ["msg": msg, "reason": reason]
    let response = try self.sendRequest(method: "keybase.1.crypto.signED25519ForKBFS", args: args)
    try checkNull(response: response)
    return ED25519SignatureInfo.fromJSON(JSON(response))
  }

/*!
 Same as the above except the full marsheled and encoded NaclSigInfo.
 */
  public func signToString(msg: NSData, reason: String) throws -> String {
    let args: [String: Any] = ["msg": msg, "reason": reason]
    let response = try self.sendRequest(method: "keybase.1.crypto.signToString", args: args)
    try checkNull(response: response)
    return JSON(response).stringValue
  }

/*!
 Decrypt exactly 32 bytes using nacl/box with the given nonce, the given
 peer's public key, and the device's private encryption key, and return the
 decrypted data. The 'reason' parameter is used as part of the
 SecretEntryArg object passed into secretUi.getSecret().
 */
  public func unboxBytes32(encryptedBytes32: NSData, nonce: NSData, peersPublicKey: NSData, reason: String) throws -> NSData {
    let args: [String: Any] = ["encryptedBytes32": encryptedBytes32, "nonce": nonce, "peersPublicKey": peersPublicKey, "reason": reason]
    let response = try self.sendRequest(method: "keybase.1.crypto.unboxBytes32", args: args)
    try checkNull(response: response)
    return JSON(response).object as! NSData
  }

  public func unboxBytes32Any(bundles: [CiphertextBundle], reason: String, promptPaper: Bool) throws -> UnboxAnyRes {
    let args: [String: Any] = ["bundles": bundles, "reason": reason, "promptPaper": promptPaper]
    let response = try self.sendRequest(method: "keybase.1.crypto.unboxBytes32Any", args: args)
    try checkNull(response: response)
    return UnboxAnyRes.fromJSON(JSON(response))
  }

}
