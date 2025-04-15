import SwiftUI

struct TaskColumnView: View {
    let title: String
    let tasks: [Task]

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
                .foregroundColor(.primary)
                .padding(.bottom, 5)

            ForEach(tasks) { task in
                TaskCardView(task: task)
            }

            Spacer()
        }
        .padding()
        .background(.ultraThinMaterial)
        .cornerRadius(16)
        .shadow(color: .gray.opacity(0.2), radius: 4, x: 0, y: 2)
    }
}
