//
//  DataStore.swift
//  MyToDos
//
//  Created by Noah Pope on 5/16/23.
//

import Foundation

class DataStore: ObservableObject {
    @Published var toDos: [ToDo] = []
    
    //load ToDos when initialized - below
    init() {
        loadToDos() 
    }
    
    func addToDo(_ toDo: ToDo) {
        
    }
    
    func updateToDo(_ toDo: ToDo) {
        
    }
    
    func deleteToDo(at indexSet: IndexSet) {
        
    }
    
    func loadToDos() {
        toDos = ToDo.sampleData
    }
    
    func saveToDos() {
        print("saving ToDos to file system eventually")
    }
}
