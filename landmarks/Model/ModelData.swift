//
//  ModelData.swift
//  landmarks
//
//  Created by frank0 on 2022/4/28.
//

import Foundation

final class ModelData : ObservableObject{
    
   @Published var landmarks :[Landmark] = load("landmarkData.json")
    
}




func load<T:Decodable>(_ filename:String) -> T{
    let data:Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else{
        fatalError("Cannot find file \(filename) in main bundle")
    }
    do {
        data = try Data(contentsOf: file)
    } catch{
        fatalError("Cannot load \(filename) from main bundle:\n\(error) ")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch{
        fatalError("Cannot parse \(filename) as \(T.self):\n\(error)")
    }
}
