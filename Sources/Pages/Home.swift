import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {

		Group {
			Section {
				Group {
					Image("images/lily-2023-01-25-dashboard-crop.png", description: "Lily the Cat on the dashboard in front of La Entrada School")
						.resizable()
						.cornerRadius("2%")
						.background(.white)
						.frame(maxWidth: 800)
						.style("width: 100%")
						.margin(.top, .medium)
						.padding(.small)

					Text("Welcome to Lily the Cat")
						.font(.title1)
				}
			}
		}
    }
}
