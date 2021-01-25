import SwiftUI

@main
struct akordiApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(conductor: Conductor())
        }
    }
}
