//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Steve Pha on 13/04/2024.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Environment(\.modelContext) private var context
    @Query private var items : [DataItem]
    
    var body: some View {
        VStack {
        
            Text("Hello, Swift Data!")
            Button(action: {
                addItem()
            }, label: {
                Text("Add Data")
            })
            
            List {
                ForEach(items) { item in
                    HStack {
                        Text("\(item.name)")
                        Spacer()
                        Button(action: {
                            updateItem(item)
                        }, label: {
                            Image(systemName: "arrow.triangle.2.circlepath")
                        })
                    }
                    
                }
                .onDelete(perform: { indexSet in
                    for index in indexSet {
                        deleteItem(items[index])
                    }
                })
            }
        }
        .padding()
    }
    
    func addItem() {
        let item = DataItem(name: "Item Swift Data")
        context.insert(item)
    }
    
    func deleteItem(_ item: DataItem) {
        context.delete(item)
    }
    
    func updateItem(_ item: DataItem) {
        item.name = "Update Swift Data"
        try? context.save()
    }
}

#Preview {
    ContentView()
}
