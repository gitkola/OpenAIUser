import SwiftUI

struct HomeScreen: View {
    @EnvironmentObject var appState: AppState

    var body: some View {
        NavigationView {
            VStack {

            }
            .navigationTitle("Home")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    NavigationLink(destination: ProfileScreen()) {
                        Image(systemName: "person.crop.circle")
                            .accessibilityLabel("Profile")
                    }
                }
            }
        }
    }
}
