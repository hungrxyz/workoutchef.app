import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        VStack(spacing: 50) {
            Text("WorkoutChef")
                .font(.title1)
                .fontWeight(.heavy)
            
            Text("Create custom workouts for Apple Watch")
                .font(.title6)
            
            Image("/images/AppIcon.png")
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 250)
                .cornerRadius(56)
                .clipped()
            
            Text {
                Link("View in TestFlight", target: "https://testflight.apple.com/join/nwYM84YA")
                    .linkStyle(.button)
                    .role(.primary)
            }
            
            Spacer(size: 200)
        }
    }
}
