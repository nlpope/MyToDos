//
//  ToDo.swift
//  MyToDos
//
//  Created by Noah Pope on 5/15/23.
//

import Foundation

struct ToDo: Identifiable, Codable {
    var id: String = UUID().uuidString
    var name: String
    var completed: Bool = false
    
}
