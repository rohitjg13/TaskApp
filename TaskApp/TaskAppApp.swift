import SwiftUI

@main
struct YourProjectApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationSplitView {
                SidebarView(team: sampleTeam)
                    .navigationSplitViewColumnWidth(min: 180, ideal: 190, max: 200)
            }
            detail: {
                ContentView()
            }
            .background(.ultraThinMaterial)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .onAppear {
                makeWindowTransparent()
            }
        }
    }

    func makeWindowTransparent() {
        for window in NSApplication.shared.windows {
            window.isOpaque = false
            window.backgroundColor = .clear
            window.titleVisibility = .hidden
            window.titlebarAppearsTransparent = true
            // window.styleMask.remove(.titled)
        }
    }
}
