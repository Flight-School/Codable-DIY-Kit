import XCTest
@testable import <#Format#>

class <#Format#>EncodingTests: XCTestCase {
    var encoder: <#Format#>Encoder!
    
    override func setUp() {
        self.encoder = <#Format#>Encoder()
    }
 
    func testEncodeFalse() {
        let value = try! encoder.encode(false)
        XCTAssertEqual(value, <#Expected#>)
    }
    
    func testEncodeTrue() {
        let value = try! encoder.encode(true)
        XCTAssertEqual(value, <#Expected#>)
    }
    
    func testEncodeInt() {
        let value = try! encoder.encode(Int.max)
        XCTAssertEqual(value, <#Expected#>)
    }
    
    func testEncodeUInt() {
        let value = try! encoder.encode(UInt.max)
        XCTAssertEqual(value, <#Expected#>)
    }
    
    func testEncodeFloat() {
        let value = try! encoder.encode(Float.pi)
        XCTAssertEqual(value, <#Expected#>)
    }
    
    func testEncodeDouble() {
        let value = try! encoder.encode(Double.pi)
        XCTAssertEqual(value, <#Expected#>)
    }
    
    func testEncodeArray() {
        let value = try! encoder.encode([1, 2, 3])
        XCTAssertEqual(value, <#Expected#>)
    }
    
    func testEncodeDictionary() {
        let value = try! encoder.encode(["a": 1, "b": 2, "c": 3])
        XCTAssertEqual(value, <#Expected#>)
    }

    static var allTests = [
        ("testEncodeFalse", testEncodeFalse),
        ("testEncodeTrue", testEncodeTrue),
        ("testEncodeInt", testEncodeInt),
        ("testEncodeInt", testEncodeUInt),
        ("testEncodeFloat", testEncodeFloat),
        ("testEncodeDouble", testEncodeDouble),
        ("testEncodeArray", testEncodeArray),
        ("testEncodeDictionary", testEncodeDictionary)
    ]
}
