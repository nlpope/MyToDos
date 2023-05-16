//
//  ContentView.swift
//  MyToDos
//
//  Created by Noah Pope on 5/15/23.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var dataStore: DataStore
    
    var body: some View {
        NavigationView {
            
            
            
            List() {
                ForEach(dataStore.toDos) { todo in
                    Button {
                        
                    } label: {
                        Text(todo.name)
                            .font(.title3)
                            .strikethrough(todo.completed)
                            .foregroundColor(todo.completed ? .green : Color(.label))
                    }
                }
            }
            
            
            
            .listStyle(InsetGroupedListStyle())
            
            
            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("My ToDos")
                        .font(.largeTitle)
                        .foregroundColor(.red )
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                }
            }
            
            
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(DataStore())
    }
}
