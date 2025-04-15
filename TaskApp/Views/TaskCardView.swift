import SwiftUI

struct TaskCardView: View {
    let task: Task

    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text(task.title)
                    .font(.headline)
                    .foregroundColor(.primary)
                Spacer()
                Text(task.category)
                    .font(.caption)
                    .padding(5)
                    .background(.ultraThinMaterial)
                    .foregroundColor(.primary)
                    .cornerRadius(8)
            }

            Text(task.description)
                .font(.subheadline)
                .foregroundColor(.primary)

            HStack {
                Image(systemName: "person.crop.circle.fill")
                    .foregroundColor(.primary)
                Text(task.assignee.name)
                    .font(.caption)
                    .foregroundColor(.primary)
                Spacer()
                if let due = task.dueIn {
                    Text("Due \(due)")
                        .font(.caption2)
                        .foregroundColor(.primary)
                }
            }
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(12)
        .shadow(radius: 2)
    }
}
