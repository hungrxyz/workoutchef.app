import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    var body: some HTML {
        NavigationBar {
            
        } logo: {
            Label {
                Strong("WorkoutChef")
                    .fontWeight(.semibold)
            } icon: {
                Image("/images/AppIcon.png", description: "WorkoutChef logo")
                    .frame(width: 30, height: 30)
                    .cornerRadius(6)
            }
        }
        .navigationItemAlignment(.leading)
        .position(.fixedTop)
        .background(.thinMaterial)
        
        Spacer(size: 100)
        
        VStack(spacing: 25) {
            Text("Your workouts. Structured on Apple Watch.")
                .font(.title1)
                .fontWeight(.bold)
                .horizontalAlignment(.center)
            
            Text("WorkoutChef turns any workout — whether from ChatGPT, TikTok, or one you create yourself — into a clear, guided plan on your Apple Watch.")
                .font(.body)
                .foregroundStyle(Color.gray)
                .horizontalAlignment(.center)
                .width(8)
            
            Card {
                Form {
                    TextField("Email", prompt: "Email")
                        .type(.email)
                        .customAttribute(name: "name", value: "email")
                        .required()
                        .class("col-md-12")
                    //                
                    //                TextField("Purpose", prompt: "What type of workouts do you do? e.g. Run, HIIT, Strength Training,...")
                    //                    .type(.text)
                    //                    .customAttribute(name: "name", value: "activity")
                    //                    .class("col-md-12")
                    
                    Button("Get Early Access")
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
}
