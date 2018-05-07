import Foundation

extension _<#Format#>Encoder {
    final class UnkeyedContainer {
        var codingPath: [CodingKey]
        var userInfo: [CodingUserInfoKey: Any]
        
        init(codingPath: [CodingKey], userInfo: [CodingUserInfoKey : Any]) {
            self.codingPath = codingPath
            self.userInfo = userInfo
        }
    }
}

extension _<#Format#>Encoder.UnkeyedContainer: UnkeyedEncodingContainer {
    func encodeNil() throws {
        <#Implementation#>
    }
    
    func encode<T>(_ value: T) throws where T : Encodable {
        <#Implementation#>
    }
    
    func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey {
        <#Implementation#>
    }
    
    func nestedUnkeyedContainer() -> UnkeyedEncodingContainer {
        <#Implementation#>
    }
    
    func superEncoder() -> Encoder {
        <#Implementation#>
    }
}

extension _<#Format#>Encoder.UnkeyedContainer: <#Format#>EncodingContainer {}
