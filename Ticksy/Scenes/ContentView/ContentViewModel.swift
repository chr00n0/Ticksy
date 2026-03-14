//
//  ContentViewModel.swift
//  Ticksy
//
//  Created by Emil Piórkowski on 13/03/2026.
//

import Foundation
import Observation
import SwiftUI

class ContentViewModel {
    var tasks: [TaskModel] = []

    func addTask(title: String) {
        let newTask = TaskModel(title: title, isDone: false)
        tasks.append(newTask)
    }

    func deleteTask(id: UUID) {
        tasks.removeAll { $0.id == id }
    }

}
