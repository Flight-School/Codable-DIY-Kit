import Foundation

extension _<#Format#>Decoder {
    final class SingleValueContainer {
        var codingPath: [CodingKey]
        var userInfo: [CodingUserInfoKey: Any]
    

        init(codingPath: [CodingKey], userInfo: [CodingUserInfoKey : Any]) {
            self.codingPath = codingPath
            self.userInfo = userInfo
        }
    }
}

extension _<#Format#>Decoder.SingleValueContainer: SingleValueDecodingContainer {    
    func decodeNil() -> Bool {
        <#Implementation#>
    }
    
    func decode(_ type: Bool.Type) throws -> Bool {
        <#Implementation#>
    }
    
    func decode(_ type: String.Type) throws -> String {
        <#Implementation#>
    }
    
    func decode(_ type: Double.Type) throws -> Double {
        <#Implementation#>
    }
    
    func decode(_ type: Float.Type) throws -> Float {
        <#Implementation#>
    }
    
    func decode(_ type: Int.Type) throws -> Int {
        <#Implementation#>
    }

    func decode(_ type: Int8.Type) throws -> Int8 {
        <#Implementation#>
    }

    func decode(_ type: Int16.Type) throws -> Int16 {
        <#Implementation#>
    }

    func decode(_ type: Int32.Type) throws -> Int32 {
        <#Implementation#>
    }

    func decode(_ type: Int64.Type) throws -> Int64 {
        <#Implementation#>
    }
    
    func decode(_ type: UInt.Type) throws -> UInt {
        <#Implementation#>
    }
    
    func decode(_ type: UInt8.Type) throws -> UInt8 {
        <#Implementation#>
    }
    
    func decode(_ type: UInt16.Type) throws -> UInt16 {
        <#Implementation#>
    }
    
    func decode(_ type: UInt32.Type) throws -> UInt32 {
        <#Implementation#>
    }
    
    func decode(_ type: UInt64.Type) throws -> UInt64 {
        <#Implementation#>
    }
  
    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        <#Implementation#>
    }
}

extension _<#Format#>Decoder.SingleValueContainer: <#Format#>DecodingContainer {}
