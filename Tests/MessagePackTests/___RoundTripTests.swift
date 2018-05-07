import XCTest
@testable import <#Format#>

class <#Format#>RoundTripTests: XCTestCase {
    var encoder: <#Format#>Encoder!
    var decoder: <#Format#>Decoder!
    
    override func setUp() {
        self.encoder = <#Format#>Encoder()
        self.decoder = <#Format#>Decoder()
    }

    func testRoundTrip() {
        let value = Airport(name: "Portland International Airport",
                            iata: "PDX",
                            icao: "KPDX",
                            coordinates: [-122.5975, 45.5886111111111],
                            runways: [
                                Airport.Runway(direction: "3/21",
                                               distance: 1829,
                                               surface: .flexible)
                            ])
        let encoded = try! encoder.encode(value)
        let decoded = try! decoder.decode(Airport.self, from: encoded)
        
        XCTAssertEqual(value.name, decoded.name)
        XCTAssertEqual(value.iata, decoded.iata)
        XCTAssertEqual(value.icao, decoded.icao)
        XCTAssertEqual(value.coordinates[0], decoded.coordinates[0], accuracy: 0.01)
        XCTAssertEqual(value.coordinates[1], decoded.coordinates[1], accuracy: 0.01)
        XCTAssertEqual(value.runways[0].direction, decoded.runways[0].direction)
        XCTAssertEqual(value.runways[0].distance, decoded.runways[0].distance)
        XCTAssertEqual(value.runways[0].surface, decoded.runways[0].surface)
    }
    
    static var allTests = [
        ("testRoundTrip", testRoundTrip)
    ]
}
