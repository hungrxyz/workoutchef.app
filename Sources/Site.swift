import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {
    
    var name = "WorkoutChef"
    var url = URL(static: "https://workoutchef.app")
    var builtInIconsEnabled = true

    var author = "@markotect"

    var homePage = Home()
    var layout = MainLayout()
}
