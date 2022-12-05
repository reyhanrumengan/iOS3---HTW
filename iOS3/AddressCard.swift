//
//  AddressCard.swift
//  iOS3
//
//  Created by  on 23.11.22.
//

import Foundation

class AddressCard: Identifiable, Codable, Equatable, Hashable{
    
    var id: UUID = UUID()
    
    var Vorname: String = ""
    var Nachname: String = ""
    var Straße: String  = ""
    var Postleitzahl: Int = 0
    var Ort: String = ""
    var Hobbys: Array<Hobby> = []
    var Freunde: Array<UUID> = []
    
    static func == (lhs: AddressCard, rhs: AddressCard) -> Bool {
        return lhs.id == rhs.id
    }
    
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    func add(hobby: Hobby){
//        Hobbys.insert(hobby, at: Hobbys.endIndex)
        Hobbys.append(hobby)
    }
    
    func remove(hobby: Hobby){
        let index = Hobbys.firstIndex(of: hobby)
        if let index = index{
            Hobbys.remove(at:index)
        }
    }
    
    func add(friend: AddressCard){
        Freunde.append(friend.id)
    }

    func remove(friend: AddressCard){
        let index = Freunde.firstIndex(of:friend.id)
        if let index = index {
            Freunde.remove(at: index)
        }
    }

    
}


