import SwiftUI

struct ContentView: View {
    @State private var tasks: [Task] = sampleTasks

    var body: some View {
        HStack(spacing: 16) {
            ForEach(TaskStatus.allCases, id: \.self) { status in
                TaskColumnView(
                    title: status.rawValue,
                    tasks: tasks.filter { $0.status == status }
                )
            }
        }
        .padding()
        .edgesIgnoringSafeArea(.top) // Remove header bar
    }
}
