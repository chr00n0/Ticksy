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
        let task = TaskModel(title: title, isDone: false)
        tasks.append(task)
    }

    func deleteTask(at offsets: IndexSet, isDone: Bool) {
        if isDone {
            tasks.remove(atOffsets: offsets)
        }
    }

}
