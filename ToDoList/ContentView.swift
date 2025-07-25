//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    
    
    var body: some View {
        VStack{
            HStack{
                Text("To-Do List")
                    .multilineTextAlignment(.leading)
                    .padding()
                Spacer()
                Button("+") {
                    withAnimation{
                        showNewTask = true
                    }
                }
                .padding()
            }//Hstack
            .font(.title)
            .fontWeight(.heavy)
            List{
                ForEach(toDos){toDoItem in
                    Text(toDoItem.title)
                    
                }
            }//todoslist
        }//vstack
        Spacer()
        if showNewTask{
            NewToDoView()
        }//ifnewtsk
    }//body
}//struct

#Preview {
    ContentView()
}
