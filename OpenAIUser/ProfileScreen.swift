import SwiftUI

struct ProfileScreen: View {
    @EnvironmentObject var appState: AppState
    @State private var showAlert = false
    var body: some View {
        Button("Delete API Key") {
            showAlert = true
        }
        .padding(8)
        .background(Color.red)
        .foregroundColor(.white)
        .cornerRadius(10)
        .navigationTitle("Profile")
        .alert("Delete API KEY?", isPresented: $showAlert) {
            Button("Delete", role: .destructive) {
                appState.openAIApiKey = nil
            }
            Button("Cancel", role: .cancel) {}
        }
    }
}
