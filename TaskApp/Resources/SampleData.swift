import Foundation

let sampleTeam: [Member] = [
    Member(name: "Brian", role: "Design", avatar: "person.crop.circle"),
    Member(name: "Julie", role: "Content", avatar: "person.crop.circle.fill"),
    Member(name: "Alex", role: "Analytics", avatar: "person.crop.circle.badge.checkmark")
]

let sampleTasks: [Task] = [
    Task(title: "Create social media content", description: "Design and prepare content for Instagram and Facebook", category: "Content", assignee: sampleTeam[1], dueIn: "in 2 days", status: .todo),
    Task(title: "Email newsletter design", description: "Design monthly newsletter template", category: "Design", assignee: sampleTeam[0], dueIn: "tomorrow", status: .todo),
    Task(title: "Analytics report", description: "Prepare Q1 marketing performance report", category: "Analytics", assignee: sampleTeam[2], dueIn: "in 3 days", status: .inProgress),
    Task(title: "Competitor analysis", description: "Research main competitors' marketing strategies", category: "Research", assignee: sampleTeam[2], dueIn: nil, status: .completed)
]
