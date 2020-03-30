# DIY Codable Encoder / Decoder Kit

In Swift 4,
a type that conforms to the `Codable` protocol
can be encoded to or decoded from representations
for any format that implements a corresponding `Encoder` or `Decoder` type.

At the time of its release,
the only reference implementations for these types
were the Foundation framework's `JSONEncoder` / `JSONDecoder`
and `PropertyListEncoder` and `PropertyListDecoder`.
The [implementation details](https://github.com/apple/swift/blob/master/stdlib/public/SDK/Foundation/JSONEncoder.swift)
of these types, however,
are obfuscated by translation logic from
`JSONSerialization` and `PropertyListSerialization`.

This repository provides a template
that makes it easier for developers
to create encoders and decoders for custom formats.
The template includes stubbed placeholders for the required types and methods
as well as simple tests for encoding and decoding `Codable` types.

This general structure was used to implement a `Codable`-compatible
[encoder and decoder for the MessagePack format](https://github.com/flight-school/messagepack).

For more information about the design and implementation
of custom encoder and decoder types,
see Chapter 7 of
[Flight School Guide to Swift Codable](https://flight.school/books/codable).

## Usage

* Clone this repository
* Find all instances of the "<#Format#>" placeholder
  and replace with the name of your own format
* Replace the leading underscores in the
  `___Decoder.swift` and `___Encoder.swift` files,
  as well as the source files in the Tests directory
* Run the command `swift package generate-xcodeproj`
  in the root project directory
* Fill in the missing implementation accordingly

### Encoder Structure

```swift
public class <#Format#>Encoder {
    public func encode<T>(_ value: T) throws -> Data
                        where T : Encodable
}

final class _<#Format#>Encoder: Encoder {
    final class SingleValueContainer: SingleValueEncodingContainer
    final class UnkeyedContainer: UnkeyedEncodingContainer
    final class KeyedContainer<Key>: KeyedEncodingContainerProtocol
            where Key: CodingKey
}

protocol <#Format#>EncodingContainer: class {}
```

### Decoder Structure

```swift
public class <#Format#>Decoder {
    public func decode<T>(_ type: T.Type,
                          from data: Data) throws -> T
                        where T : Decodable
}

final class _<#Format#>Decoder: Decoder {
    final class SingleValueContainer: SingleValueDecodingContainer
    final class UnkeyedContainer: UnkeyedDecodingContainer
    final class KeyedContainer<Key>: KeyedContainer
            where Key: CodingKey
}

protocol <#Format#>DecodingContainer: class {}
```

## License

MIT

## Contact

Mattt ([@mattt](https://twitter.com/mattt))
