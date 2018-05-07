import Foundation

/**
 
 */
public class <#Format#>Encoder {
    func encode(_ value: Encodable) throws -> Data {
        let encoder = _<#Format#>Encoder()
        try value.encode(to: encoder)
        return encoder.data
    }
}

final class _<#Format#>Encoder {
    var codingPath: [CodingKey] = []
    
    var userInfo: [CodingUserInfoKey : Any] = [:]
    
    fileprivate var container: <#Format#>EncodingContainer?
}

extension _<#Format#>Encoder: Encoder {
    fileprivate func assertCanCreateContainer() {
        precondition(self.container == nil)
    }
    
    func container<Key>(keyedBy type: Key.Type) -> KeyedEncodingContainer<Key> where Key : CodingKey {
        assertCanCreateContainer()
        
        let container = KeyedContainer<Key>(codingPath: self.codingPath, userInfo: self.userInfo)
        self.container = container
        
        return KeyedEncodingContainer(container)
    }
    
    func unkeyedContainer() -> UnkeyedEncodingContainer {
        assertCanCreateContainer()
        
        let container = UnkeyedContainer(codingPath: self.codingPath, userInfo: self.userInfo)
        self.container = container
        
        return container
    }
    
    func singleValueContainer() -> SingleValueEncodingContainer {
        assertCanCreateContainer()
        
        let container = SingleValueContainer(codingPath: self.codingPath, userInfo: self.userInfo)
        self.container = container
        
        return container
    }
}

protocol <#Format#>EncodingContainer: class {
    <#Requirements#>
}
