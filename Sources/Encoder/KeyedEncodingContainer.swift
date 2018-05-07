import Foundation

extension _<#Format#>Encoder {
    final class KeyedContainer<Key> where Key: CodingKey {
        var codingPath: [CodingKey]
        var userInfo: [CodingUserInfoKey: Any]
        
        init(codingPath: [CodingKey], userInfo: [CodingUserInfoKey : Any]) {
            self.codingPath = codingPath
            self.userInfo = userInfo
        }
    }
}

extension _<#Format#>Encoder.KeyedContainer: KeyedEncodingContainerProtocol {
    func encodeNil(forKey key: Key) throws {
        <#Implementation#>
    }
    
    func encode<T>(_ value: T, forKey key: Key) throws where T : Encodable {
        <#Implementation#>
    }
    
    func nestedUnkeyedContainer(forKey key: Key) -> UnkeyedEncodingContainer {
        <#Implementation#>
    }
    
    func nestedContainer<NestedKey>(keyedBy keyType: NestedKey.Type, forKey key: Key) -> KeyedEncodingContainer<NestedKey> where NestedKey : CodingKey {
        <#Implementation#>
    }
    
    func superEncoder() -> Encoder {
        <#Implementation#>
    }
    
    func superEncoder(forKey key: Key) -> Encoder {
        <#Implementation#>
    }
}

extension _<#Format#>Encoder.KeyedContainer: <#Format#>EncodingContainer {}
