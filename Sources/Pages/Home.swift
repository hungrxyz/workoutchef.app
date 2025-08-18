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
            Text("Your workouts, guided on Apple Watch.")
                .font(.title1)
                .fontWeight(.bold)
                .horizontalAlignment(.center)
            
            Text("Import a workout from ChatGPT, TikTok or create your own. WorkoutChef makes it a structured, follow-along plan on your Apple Watch. With haptics and interval guidance, you stay in the flow. No phone, no guessing, just training.")
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
            
            Grid(alignment: .center) {
                VStack {
                    Text("Import workout")
                        .font(.title4)
                        .fontWeight(.semibold)
                        .horizontalAlignment(.center)
                        .padding()
                    
                    ZStack {
                        Image("images/Screenshot-Import.png")
                            .resizable()
                            .frame(maxWidth: 315)
                            .cornerRadius(45)
                        
                        Image("images/iPhone 16 Pro - Natural Titanium - Portrait.png")
                            .resizable()
                            .frame(maxWidth: 350)
                    }
                }
                .padding()
                .background(Color(hex: "#A5DB61"))
                .cornerRadius(60)
                
                VStack {
                    Text("or create your own")
                        .font(.title4)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .horizontalAlignment(.center)
                        .padding()
                    
                    ZStack {
                        Image("images/Screenshot-Editor.png")
                            .resizable()
                            .frame(maxWidth: 315)
                            .cornerRadius(45)
                        
                        Image("images/iPhone 16 Pro - Natural Titanium - Portrait.png")
                            .resizable()
                            .frame(maxWidth: 350)
                    }
                }
                .padding()
                .background(Color(hex: "#976BF4"))
                .cornerRadius(60)
                
                VStack {
                    Text("and follow the buzz")
                        .font(.title4)
                        .fontWeight(.semibold)
                        .horizontalAlignment(.center)
                        .padding()
                    
                    Image("images/AppleWatch-Steps.jpeg")
                        .resizable()
                        .frame(maxWidth: 315)
                }
                .padding(.top)
                .background(Color(hex: "#FDE04A"))
                .cornerRadius(60)
            }
            .columns(2)
        }
    }
}
