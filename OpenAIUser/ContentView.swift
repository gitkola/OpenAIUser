import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""
    @EnvironmentObject var appState: AppState

    var body: some View {
        if appState.openAIApiKey != nil {
            HomeScreen()
        } else {
            VStack {
                Text("Please set your OpenAI API KEY")
                HStack {
                    Button(action: pasteFromClipboard) {
                        Image(systemName: "doc.on.clipboard")
                    }
                    
                    TextField("API KEY", text: $inputText)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .padding()
                    
                    Button(action: setApiKey) {
                        Image(systemName: "tray.and.arrow.down")
                    }
                }
            }
            .padding()
        }
    }
    
    func pasteFromClipboard() {
        if let clipboardContent = UIPasteboard.general.string {
            inputText = clipboardContent
        }
    }
    
    func setApiKey() {
        if !inputText.isEmpty {
            appState.openAIApiKey = inputText
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
