import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        VStack(spacing: 50) {
            Text("WorkoutChef")
                .font(.title1)
                .fontWeight(.heavy)
            
            Text("Build workouts that fit you.")
                .font(.title4)
            
            Text("Send them straight to your Apple Watch and train without thinking about what’s next.")
            
            Image("/images/AppIcon.png")
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 250)
                .cornerRadius(56)
                .clipped()
            
            Form {
                TextField("Email", prompt: "john@doe.com")
                    .type(.email)
                    .customAttribute(name: "name", value: "email")
                    .required()
                
                TextField("Purpose", prompt: "What’s your main activity?")
                    .type(.text)
                    .customAttribute(name: "name", value: "activity")
                
                Button("Join Waitlist")
                    .role(.primary)
                    .type(.submit)
            }
            .labelStyle(.hidden)
            .class("launchlist-form")
            .attribute("action", "https://getlaunchlist.com/s/u64q47")
            .attribute("method", "POST")
            
            Script(code: "")
                .attribute("src", "https://getlaunchlist.com/js/widget-diy.js")
                .attribute("defer")
            
            Spacer(size: 200)
        }
    }
}
