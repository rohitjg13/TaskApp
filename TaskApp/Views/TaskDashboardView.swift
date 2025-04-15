import SwiftUI

struct TaskDashboardView: View {
    var body: some View {
        HStack(spacing: 0) {
            SidebarView(team: sampleTeam)
            Divider()
            ContentView()
        }
    }
}
