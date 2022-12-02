//
//  AddressBook.swift
//  iOS3-Rumengan
//
//  Created by  on 23.11.22.
//

import Foundation

class AddressBook: Codable, Comparable, Equatable{
//    static func < (lhs: AddressBook, rhs: AddressBook) -> Bool {
//
//        return AddressCard1.id < AddressCard2.id
//    }
    
                    
    
//    static func < (lhs: AddressBook, rhs: AddressBook) -> Bool {
//        return lhs.AddressList == rhs.AddressList
//    }
    
//    static func == (lhs: AddressBook, rhs: AddressBook) -> Bool {
//        return lhs.AddressList == rhs.AddressList
//    }
    
    
    var AddressList: Array<AddressCard>  = []
    
    func add(card: AddressCard){
        AddressList.append(card)
    }

    func remove(card: AddressCard){
        let index = AddressList.firstIndex(of: card)
        if let index = index{
            AddressList.remove(at: index)
//            delete friend references card
            
            
            
            
        }
        
    }

    func sortBySurname(sort1:AddressCard, sort2:AddressCard){
//        AddressList.sort(by: {sort1, sort2 in return sort1 < sort2})
        }
        
    func searchBySurname(card: AddressCard) -> AddressCard{
        for addressCard in AddressList {
            if addressCard.Nachname == card.Nachname{
                return addressCard
            }
        }
    }
    
    func searchByID(card: AddressCard) -> AddressCard{
        for addressCard in AddressList {
            if addressCard.id == card.id{
                return addressCard
            }
        }
    }
    
//    func friendsOf(card: AddressCard) -> [AddressCard] {
//
//
//    }
    
    func save(toFile path: String){
        let url = URL(fileURLWithPath: path)
        
        
    }
    
//    class func addressBook(fromFile path: String) -> AddressBook?{
//
//    }
    
    
}

