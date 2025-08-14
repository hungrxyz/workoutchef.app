import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        VStack(spacing: 20) {
            Spacer(size: 25)
            
            Image("/images/AppIcon.png")
                .aspectRatio(1, contentMode: .fit)
                .frame(width: 250)
                .cornerRadius(56)
                .clipped()
            
            Text("WorkoutChef")
                .font(.title1)
                .fontWeight(.black)
                .horizontalAlignment(.center)
            
            Text("Build workouts that fit you.")
                .font(.title6)
                .horizontalAlignment(.center)
            
            Text("Send them straight to your Apple Watch and train without thinking about what’s next.")
                .foregroundStyle(.secondary)
                .horizontalAlignment(.center)
            
            Form {
                TextField("Email", prompt: "Email")
                    .type(.email)
                    .customAttribute(name: "name", value: "email")
                    .required()
                    .class("col-md-12")
                
                TextField("Purpose", prompt: "What type of workouts do you do? e.g. Run, HIIT, Strength Training,...")
                    .type(.text)
                    .customAttribute(name: "name", value: "activity")
                    .class("col-md-12")
                
                Button("Join Waitlist")
                    .role(.primary)
                    .type(.submit)
                    .class("col-md-12")
                    .style(.backgroundColor, "#A5DB61")
                    .style(.color, Color.black.description)
                    .style(.borderColor, "#A5DB61")
                    .style(.fontWeight, "bold")
            }
            .labelStyle(.hidden)
            .class("launchlist-form")
            .attribute("action", "https://getlaunchlist.com/s/u64q47")
            .attribute("method", "POST")
        }
    }
}
