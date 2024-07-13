import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Lily the Cat"
	var baseTitle = " – Lily the Cat"
    var url = URL("https://lilythecat.org")
    var builtInIconsEnabled = true

    var author = "Deirdre Saoirse Moen"

    var homePage = Home()
    var theme = MainTheme()

	var pages: [any StaticPage] {
	 homePage
	}
}


