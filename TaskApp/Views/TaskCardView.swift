import SwiftUI

struct TaskCardView: View {
    let task: Task

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(task.title)
                    .font(.headline)
                Spacer()
                Text(task.category)
                    .font(.caption)
                    .padding(5)
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(8)
            }

            Text(task.description)
                .font(.subheadline)
                .foregroundColor(.secondary)

            HStack {
                Image(systemName: "person.crop.circle.fill")
                Text(task.assignee.name)
                    .font(.caption)
                Spacer()
                if let due = task.dueIn {
                    Text("Due \(due)")
                        .font(.caption2)
                        .foregroundColor(.gray)
                }
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
