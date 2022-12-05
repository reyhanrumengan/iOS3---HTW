//
//  main.swift
//  iOS3
//
//  Created by Reyhan Rumengan on 02.12.22.
//

import Foundation


var running: Bool = true
while (running) {
    print("(E)ingabe, (S)uche, (L)iste oder (Q)uit?")
    let input = readLine()
    switch input {
        case "e":
            newEntry()
        case "s":
            searchEntry()
        case "l":
            printAll()
        case "q":
           running = false
           break
        default:
            //default action
            continue
        
    }
}

func readInput(withPrompt prompt: String) -> String {
    var valid: Bool = false
    print(prompt)
    while(valid != true) {
        if let input = readLine() {
            valid = !valid
            return input
        } else {
            print("Input invalid")
        }
    }

}


func newEntry () {
    let newCard = AddressCard()
    //init card?
    let vorname = readInput(withPrompt: "Geben Sie die Vorname ein")
    let nachname = readInput(withPrompt: "Geben Sie die Nachname ein")
    let Strasse = readInput(withPrompt: "Geben Sie die Strasse ein")
    let Postleitzahl = readInput(withPrompt: "Geben Sie die PLZ ein")
    let Ort = readInput(withPrompt: "Geben Sie den Ort ein")
    
}


func searchEntry() {
    //open addressBook
    //search addressBook with Name/Vorname
    //print the addressCard
    
    //option to add friends
    
}


func printAll() {
    //open addressBook
    //loop through and print

    
}



