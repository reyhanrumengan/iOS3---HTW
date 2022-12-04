//
//  main.swift
//  iOS3
//
//  Created by Reyhan Rumengan on 02.12.22.
//

import Foundation


print("(E)ingabe, (S)uche, (L)iste oder (Q)uit?")

let command = readLine()

switch command{
//case "E":
//    print("Neue Karte anlegen: ")
    
case "S":
    if let str = readLine() {
       print("Suchname: " + str)
        AddressBook.searchBySurname(surname: str)
    }
    
//case "L":
//    print("x")
//case "Q":
//    print("x")
default:
    print("Falscher Befehl")
}
