//
//  TaskModel.swift
//  Ticksy
//
//  Created by Emil Piórkowski on 13/03/2026.
//

import Foundation

struct TaskModel: Identifiable {
    var id = UUID()
    var title: String
    var isDone: Bool
}
