import SwiftUI

struct TaskColumnView: View {
    let title: String
    let tasks: [Task]

    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title2)
                .bold()
                .padding(.bottom, 5)

            ForEach(tasks) { task in
                TaskCardView(task: task)
            }

            Spacer()
        }
        .padding()
        .frame(maxWidth: .infinity)
        .background(Color.gray.opacity(0.1))
        .cornerRadius(16)
    }
}
