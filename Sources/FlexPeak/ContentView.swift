import SwiftUI
#if SKIP
import SkipFirebaseAuth
#else
import FirebaseAuth
#endif

public struct ContentView: View {
    @State private var isSignedIn = false

    public var body: some View {
        VStack {
            if isSignedIn {
                Text("Welcome!")
                Button("Sign Out") {
                    Task {
                        try? await Auth.auth().signOut()
                        isSignedIn = false
                    }
                }
            } else {
                Button("Sign In Anonymously") {
                    Task {
                        do {
                            let result = try await Auth.auth().signInAnonymously()
                            isSignedIn = result.user != nil
                        } catch {
                            print("Error signing in: \(error)")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
