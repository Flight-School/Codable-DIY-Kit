import Foundation

extension _<#Format#>Decoder {
    final class UnkeyedContainer {
        var codingPath: [CodingKey]
        var userInfo: [CodingUserInfoKey: Any]
       
        init(codingPath: [CodingKey], userInfo: [CodingUserInfoKey : Any]) {
            self.codingPath = codingPath
            self.userInfo = userInfo
        }
    }
}

extension _<#Format#>Decoder.UnkeyedContainer: UnkeyedDecodingContainer {
    func decodeNil() throws -> Bool {
        <#Implementation#>
    }
    
    func decode<T>(_ type: T.Type) throws -> T where T : Decodable {
        <#Implementation#>
    }
    
    func nestedUnkeyedContainer() throws -> UnkeyedDecodingContainer {
        <#Implementation#>
    }
    
    func nestedContainer<NestedKey>(keyedBy type: NestedKey.Type) throws -> KeyedDecodingContainer<NestedKey> where NestedKey : CodingKey {
        <#Implementation#>
    }

    func superDecoder() throws -> Decoder {
        <#Implementation#>
    }
}

extension _<#Format#>Decoder.UnkeyedContainer: <#Format#>DecodingContainer {}
