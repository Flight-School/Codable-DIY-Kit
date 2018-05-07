import Foundation

/**
 
 */
final public class <#Format#>Decoder {
    func decode<T>(_ type: T.Type, from data: Data) throws -> T where T : Decodable {
        let decoder = _<#Format#>Decoder(data: data)
        return try T(from: decoder)
    }
}

final class _<#Format#>Decoder {
    var codingPath: [CodingKey] = []
    
    var userInfo: [CodingUserInfoKey : Any] = [:]
    
    var container: <#Format#>DecodingContainer?
    fileprivate var data: Data
    
    init(data: Data) {
        self.data = data
    }
}

extension _<#Format#>Decoder: Decoder {
    fileprivate func assertCanCreateContainer() {
        precondition(self.container == nil)
    }
        
    func container<Key>(keyedBy type: Key.Type) -> KeyedDecodingContainer<Key> where Key : CodingKey {
        assertCanCreateContainer()

        let container = KeyedContainer<Key>(data: self.data, codingPath: self.codingPath, userInfo: self.userInfo)
        self.container = container

        return KeyedDecodingContainer(container)
    }

    func unkeyedContainer() -> UnkeyedDecodingContainer {
        assertCanCreateContainer()
        
        let container = UnkeyedContainer(data: self.data, codingPath: self.codingPath, userInfo: self.userInfo)
        self.container = container

        return container
    }
    
    func singleValueContainer() -> SingleValueDecodingContainer {
        assertCanCreateContainer()
        
        let container = SingleValueContainer(data: self.data, codingPath: self.codingPath, userInfo: self.userInfo)
        self.container = container
        
        return container
    }
}

protocol <#Format#>DecodingContainer: class {
    <#Requirements#>
}
