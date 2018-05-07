import XCTest
@testable import <#Format#>

class <#Format#>DecodingTests: XCTestCase {
    var decoder: <#Format#>Decoder!
    
    override func setUp() {
        self.decoder = <#Format#>Decoder()
    }
    
    func testDecodeFalse() {
        let data = <#Data#>
        let value = try! decoder.decode(Bool.self, from: data)
        XCTAssertEqual(value, false)
    }
    
    func testDecodeTrue() {
        let data = <#Data#>
        let value = try! decoder.decode(Bool.self, from: data)
        XCTAssertEqual(value, true)
    }
    
    func testDecodeInt() {
        let data = <#Data#>
        let value = try! decoder.decode(Int.self, from: data)
        XCTAssertEqual(value, Int.max)
    }
    
    func testDecodeUInt() {
        let data = <#Data#>
        let value = try! decoder.decode(Int.self, from: data)
        XCTAssertEqual(value, UInt.max)
    }
    
    func testDecodeFloat() {
        let data = <#Data#>
        let value = try! decoder.decode(Double.self, from: data)
        XCTAssertEqual(value, Float.pi)
    }
    
    func testDecodeDouble() {
        let data = <#Data#>
        let value = try! decoder.decode(Double.self, from: data)
        XCTAssertEqual(value, Double.pi)
    }
    
    func testDecodeArray() {
        let data = <#Data#>
        let value = try! decoder.decode([Int].self, from: data)
        XCTAssertEqual(value, [1, 2, 3])
    }

    func testDecodeDictionary() {
        let data = <#Data#>
        let value = try! decoder.decode([String: Int].self, from: data)
        XCTAssertEqual(value, ["a": 1, "b": 2, "c": 3])
    }

    static var allTests = [
        ("testDecodeFalse", testDecodeFalse),
        ("testDecodeTrue", testDecodeTrue),
        ("testDecodeInt", testDecodeInt),
        ("testDecodeUInt", testDecodeUInt),
        ("testDecodeFloat", testDecodeFloat),
        ("testDecodeDouble", testDecodeDouble),
        ("testDecodeArray", testDecodeArray)
        ("testDecodeDictionary", testDecodeDictionary)
    ]
}
