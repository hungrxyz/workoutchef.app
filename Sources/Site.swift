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
    var titleSuffix = " | Get Early Access"
    var url = URL(static: "https://workoutchef.app")
    var favicon = URL(string: "/images/favicon.png")
    var builtInIconsEnabled = true

    var author = "@markotect"

    var homePage = Home()
    var layout = MainLayout()
    
    var lightTheme = LightTheme()
    var darkTheme = DarkTheme()
}

struct LightTheme: Theme {
    var colorScheme: Ignite.ColorScheme = .light
    
    var accent: Color = Color(hex: "#4B700A")
}

struct DarkTheme: Theme {
    var colorScheme: Ignite.ColorScheme = .dark
    
    var accent: Color = Color(hex: "#BCF45E")
}
