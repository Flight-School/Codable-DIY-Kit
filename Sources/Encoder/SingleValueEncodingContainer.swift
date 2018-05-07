import Foundation

extension _<#Format#>Encoder {
    final class SingleValueContainer {
        var codingPath: [CodingKey]
        var userInfo: [CodingUserInfoKey: Any]
        
        init(codingPath: [CodingKey], userInfo: [CodingUserInfoKey : Any]) {
            self.codingPath = codingPath
            self.userInfo = userInfo
        }
    }
}

extension _<#Format#>Encoder.SingleValueContainer: SingleValueEncodingContainer {
    func encodeNil() throws {
        <#Implementation#>
    }
    
    func encode(_ value: Bool) throws {
        <#Implementation#>
    }
    
    func encode(_ value: String) throws {
        <#Implementation#>
    }
    
    func encode(_ value: Double) throws {
        <#Implementation#>
    }
    
    func encode(_ value: Float) throws {
        <#Implementation#>
    }
    
    func encode(_ value: Int) throws {
        <#Implementation#>
    }
    
    func encode(_ value: Int8) throws {
        <#Implementation#>
    }
    
    func encode(_ value: Int16) throws {
        <#Implementation#>
    }
    
    func encode(_ value: Int32) throws {
        <#Implementation#>
    }
    
    func encode(_ value: Int64) throws {
        <#Implementation#>
    }
    
    func encode(_ value: UInt) throws {
        <#Implementation#>
    }
    
    func encode(_ value: UInt8) throws {
        <#Implementation#>
    }
    
    func encode(_ value: UInt16) throws {
        <#Implementation#>
    }
    
    func encode(_ value: UInt32) throws {
        <#Implementation#>
    }
    
    func encode(_ value: UInt64) throws {
        <#Implementation#>
    }
    
    func encode<T>(_ value: T) throws where T : Encodable {
        <#Implementation#>
    }
}

extension _<#Format#>Encoder.SingleValueContainer: <#Format#>EncodingContainer {}
