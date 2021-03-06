//
//  StringExtensions.swift
//  Core
//
//  Created by 李士军 on 2018/11/23.
//

import Foundation



/// Types adopting the `URLConvertible` protocol can be used to construct URLs, which are then used to construct
/// URL requests.
public protocol URLConvertible {
    /// Returns a URL that conforms to RFC 2396 or throws an `Error`.
    ///
    /// - throws: An `Error` if the type cannot be converted to a `URL`.
    ///
    /// - returns: A URL or throws an `Error`.
    func asURL() throws -> URL
}

extension String: URLConvertible {
    
    /// Returns a URL if `self` represents a valid URL string that conforms to RFC 2396 or throws an `AFError`.
    ///
    /// - throws: An `AFError.invalidURL` if `self` is not a valid URL string.
    ///
    /// - returns: A URL or throws an `AFError`.
    public func asURL() throws -> URL {
        guard let url = URL(string: self) else { throw AFError.invalidURL(url: self) }
        return url
    }
    
    public func fromBase64() -> String? {
        guard let data = Data(base64Encoded: self) else {
            return nil
        }
        
        return String(data: data, encoding: .utf8)
    }
    
    public func toBase64() -> String {
        return Data(self.utf8).base64EncodedString()
    }
    
    public func hmac(algorithm: HMAC.Algorithm, key: String) -> String {
        let hmac = HMAC(using: algorithm, key: key)
        let stringHmacUpdate = hmac.update(string: self)
        if(stringHmacUpdate != nil)
        {
            let bytes = stringHmacUpdate!.final()
            if(bytes.count>0)
            {
                let data = Data(bytes: bytes)
                return data.map { String(format: "%02hhx", $0) }.joined()
            }
        }
        return "";
    }
    
    public func hmacData(algorithm: HMAC.Algorithm, hexStringKey:String ) ->String{
        let hexStringData = Data(hex: hexStringKey)
        let hmac = HMAC(using: algorithm, key: hexStringData)
        let stringHmacUpdate = hmac.update(string: self)
        if(stringHmacUpdate != nil)
        {
            let bytes = stringHmacUpdate!.final()
            if(bytes.count>0)
            {
                let data = Data(bytes: bytes)
                return data.map { String(format: "%02hhx", $0) }.joined()
            }
        }
        return  "";
    }
    
    public func appendCompactedString() -> String{
        var result = "";
        var previousIsWhiteSpace = false
        for i in 0..<self.count{
            let char = self[i]
            if(String(char) == " ")
            {
                if(previousIsWhiteSpace)
                {
                    continue
                }
                result.append(" ")
                previousIsWhiteSpace = true
            }else{
                result.append(char)
                previousIsWhiteSpace = false
            }
        }
        return result
    }
    
    
    
    subscript (i: Int) -> Character {
        return self[index(startIndex, offsetBy: i)]
    }
    subscript (bounds: CountableRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ..< end]
    }
    subscript (bounds: CountableClosedRange<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[start ... end]
    }
    subscript (bounds: CountablePartialRangeFrom<Int>) -> Substring {
        let start = index(startIndex, offsetBy: bounds.lowerBound)
        let end = index(endIndex, offsetBy: -1)
        return self[start ... end]
    }
    subscript (bounds: PartialRangeThrough<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ... end]
    }
    subscript (bounds: PartialRangeUpTo<Int>) -> Substring {
        let end = index(startIndex, offsetBy: bounds.upperBound)
        return self[startIndex ..< end]
    }
}



public extension Data {
    public init(hex: String) {
        self.init(bytes: Array<UInt8>(hex: hex))
    }
    
    public var bytes: Array<UInt8> {
        return Array(self)
    }
    
    public func toHexString() -> String {
        return bytes.toHexString()
    }
}

extension Array {
    public init(reserveCapacity: Int) {
        self = Array<Element>()
        self.reserveCapacity(reserveCapacity)
    }
    
    var slice: ArraySlice<Element> {
        return self[self.startIndex ..< self.endIndex]
    }
}

public extension Array where Element == UInt8 {
    public func toBase64() -> String? {
        return Data(bytes: self).base64EncodedString()
    }
    
    public init(base64: String) {
        self.init()
        
        guard let decodedData = Data(base64Encoded: base64) else {
            return
        }
        
        append(contentsOf: decodedData.bytes)
    }
    
    public init(hex: String) {
        self.init(reserveCapacity: hex.unicodeScalars.lazy.underestimatedCount)
        var buffer: UInt8?
        var skip = hex.hasPrefix("0x") ? 2 : 0
        for char in hex.unicodeScalars.lazy {
            guard skip == 0 else {
                skip -= 1
                continue
            }
            guard char.value >= 48 && char.value <= 102 else {
                removeAll()
                return
            }
            let v: UInt8
            let c: UInt8 = UInt8(char.value)
            switch c {
            case let c where c <= 57:
                v = c - 48
            case let c where c >= 65 && c <= 70:
                v = c - 55
            case let c where c >= 97:
                v = c - 87
            default:
                removeAll()
                return
            }
            if let b = buffer {
                append(b << 4 | v)
                buffer = nil
            } else {
                buffer = v
            }
        }
        if let b = buffer {
            append(b)
        }
    }
    
    public func toHexString() -> String {
        return `lazy`.reduce("") {
            var s = String($1, radix: 16)
            if s.count == 1 {
                s = "0" + s
            }
            return $0 + s
        }
    }
}
