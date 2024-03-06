import Foundation
import KeychainSwift

class AppState: ObservableObject {
    private let keychain = KeychainSwift()
    private let key = "OPEN_AI_API_KEY"
    @Published var openAIApiKey: String? {
        didSet {
            if let apiKey = openAIApiKey {
                keychain.set(apiKey, forKey: key)
            } else {
                keychain.delete(key)
            }
        }
    }
    
    init() {
        openAIApiKey = keychain.get(key)
    }
}
