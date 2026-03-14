//
//  ContentView.swift
//  Ticksy
//
//  Created by Emil Piórkowski on 13/03/2026.
//

import SwiftUI

struct ContentView: View {
    
    private var vm = ContentViewModel()
    @State private var showAlert = false
    @State private var newTitleTask = ""

    var body: some View {
        NavigationStack {
            VStack {
                List(vm.tasks) { newTask in
                    Text(newTask.title)
                        .swipeActions(edge: .trailing) {
                            Button(role: .destructive) {
                                vm.deleteTask(id: newTask.id)
                            } label: {
                                Label("", systemImage: "trash")
                            }
                        }
                    
                }
            }
            .navigationTitle("Ticksy")
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button("Add", systemImage: "plus") {
                        showAlert = true
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .alert("Add new task", isPresented: $showAlert) {
                TextField("Add new task", text: $newTitleTask)
                Button("Add") {
                    guard !newTitleTask.isEmpty else {
                        return
                    }
                    vm.addTask(title: newTitleTask)
                    newTitleTask = ""
                }
                Button("Cancel", role: .cancel) {
                    newTitleTask = ""
                }

            }
        }

    }

}

#Preview {
    ContentView()
}
