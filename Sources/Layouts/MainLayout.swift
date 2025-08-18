import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Head {
            MetaTag(property: "og:image", content: "/images/AppIcon.png")
        }
        Body {
            content
            IgniteFooter()
        }
    }
}
