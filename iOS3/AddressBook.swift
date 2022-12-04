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
        
    func searchBySurname(surname: String) -> AddressCard{
        for addressCard in AddressList {
            if addressCard.Nachname == surname{
                return addressCard
            }
        }
    }
    
    func searchByID(id: UUID) -> AddressCard{
        for addressCard in AddressList {
            if addressCard.id == id{
                return addressCard
            }
        }
    }
    
    func friendsOf(card: AddressCard) -> [AddressCard] {
        let freunde: Array<UUID> = card.Freunde
        var freundeAddressCard: Array<AddressCard>
        
        for id in freunde{
            let freund = searchByID(id: id)
            freundeAddressCard.append(freund)
        }
        return freundeAddressCard
    }
    
    func save(toFile path: String){
        let book = AddressBook()
        
        let url = URL(fileURLWithPath: path)
        
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(book) {
            try? data.write(to: url)
        }
        
        
    }
    
    class func addressBook(fromFile path: String) -> AddressBook?{
        let url = URL(fileURLWithPath: path)
        
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let book = try? decoder.decode(AddressBook.self, from: data) {
                return book
            }
        }
    }
    
}

