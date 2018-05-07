struct Airport: Codable, Equatable {
    let name: String
    let iata: String
    let icao: String
    let coordinates: [Double]
    
    struct Runway: Codable, Equatable {
        enum Surface: String, Codable, Equatable {
            case rigid, flexible, gravel, sealed, unpaved, other
        }
        
        let direction: String
        let distance: Int
        let surface: Surface
    }
    
    let runways: [Runway]
}
