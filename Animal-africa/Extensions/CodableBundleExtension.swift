//
//  CodableBundleExtension.swift
//  Animal-africa
//
//  Created by Drillmaps India on 10/10/22.
//

import Foundation

extension Bundle {
    func decode<T:Codable>(_ file: String) -> T {
        //1.locate the json file data
        guard let url = self.url(forResource:file , withExtension: nil )
        else{
            fatalError("Faild to Locate\(file) n bundle")
        }
        
        //2.create a property for data
        guard let data = try? Data (contentsOf: url) else{
            fatalError("Faild to load \(file) form bundle")
        }
        
        //3.create a decoder
        let decoder = JSONDecoder()
        
        //4.create a property for the decode data
        guard let loaded = try? decoder.decode(T.self, from: data) else{
            fatalError("Failed to decode \(file) form bundle.")
        }
        
        //5. return ready to use data
        return loaded
    }
}
