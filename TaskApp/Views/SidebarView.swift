import SwiftUI

struct SidebarView: View {
    let team: [Member]

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Team")
                .font(.headline)

            ForEach(team) { member in
                HStack {
                    Image(systemName: "person.circle.fill")
                    VStack(alignment: .leading) {
                        Text(member.name)
                        Text(member.role)
                            .font(.caption)
                            .foregroundColor(.gray)
                    }
                }
            }

            Spacer()
        }
        .padding()
        .frame(maxWidth: 200)
        .background(Color.gray.opacity(0.2))
    }
}
