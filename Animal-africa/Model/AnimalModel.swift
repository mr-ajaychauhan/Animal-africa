//
//  AnimalModel.swift
//  Animal-africa
//
//  Created by Drillmaps India on 21/12/22.
//

import SwiftUI

struct Animals:Codable ,Identifiable {
    let id:String
    let name:String
    let headline:String
    let description:String
    let link: String
    let image:String
    let gallery:[String]
    let fact:[String]
}

