import Foundation

extension _<#Format#>Decoder {
    final class KeyedContainer<Key> where Key: CodingKey {
        var codingPath: [CodingKey]
        var userInfo: [CodingUserInfoKey: Any]

        init(codingPath: [CodingKey], userInfo: [CodingUserInfoKey : Any]) {
            self.codingPath = codingPath
            self.userInfo = userInfo
        }
    }
}

extension _<#Format#>Decoder.KeyedContainer: KeyedDecodingContainerProtocol {
    var allKeys: [Key] {
        <#Implementation#>
    }
    
    func contains(_ key: Key) -> Bool {
        <#Implementation#>
    }
    
    func decodeNil(forKey key: Key) throws -> Bool {
        <#Implementation#>
    }
    
    func decode<T>(_ type: T.Type, forKey key: Key) throws -> T where T : Decodable {
        <#Implementation#>
    }
    
 
    func nestedUnkeyedContainer(forKey key: Key) throws -> UnkeyedDecodingContainer {
        <#Implementation#>
    }
    
    func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type, forKey key: Key) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        <#Implementation#>
    }
    
    func superDecoder() throws -> Decoder {
        <#Implementation#>
    }
    
    func superDecoder(forKey key: Key) throws -> Decoder {
        <#Implementation#>
    }
}

extension _<#Format#>Decoder.KeyedContainer: <#Format#>DecodingContainer {}
