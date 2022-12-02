//
//  Hobby.swift
//  iOS3
//
//  Created by  on 23.11.22.
//

import Foundation

class Hobby: Identifiable, Codable, Equatable{
    
    var id: UUID = UUID()
    
    var name: String
    
    init(id: UUID, name: String) {
        self.id = id
        self.name = name
    }
    
    static func == (lhs: Hobby, rhs: Hobby) -> Bool {
        return lhs.id == rhs.id
    }
    
}
 
