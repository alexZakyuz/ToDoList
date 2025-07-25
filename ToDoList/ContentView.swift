//
//  ContentView.swift
//  ToDoList
//
//  Created by Scholar on 7/25/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showNewTask = false
    
    
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
