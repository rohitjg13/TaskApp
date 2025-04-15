//
//  TaskModels.swift
//  TaskApp
//
//  Created by Rohit JG on 16/04/25.
//

import Foundation

struct Member: Identifiable {
    let id = UUID()
    let name: String
    let role: String
    let avatar: String
}

struct Task: Identifiable {
    let id = UUID()
    let title: String
    let description: String
    let category: String
    let assignee: Member
    let dueIn: String?
    let status: TaskStatus
}

enum TaskStatus: String, CaseIterable {
    case todo = "To Do"
    case inProgress = "In Progress"
    case completed = "Completed"
}
