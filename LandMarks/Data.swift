//
//  Data.swift
//  LandMarks
//
//  Created by Dillon Dhayanandan on 30/09/2023.
//

import Foundation
var landmarks: [Landmark] = load("landmarkData.json")
func load<T :Decodable> (_ filename: String) -> T {
    let data : Data
    
    guard let file  = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle.")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("couldn't parse \(filename) as \(T.self)")
    }
}
