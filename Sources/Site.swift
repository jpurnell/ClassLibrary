import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ClassLibrary()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ClassLibrary: Site {
    var name = "Princeton Class of 2000"
    var titleSuffix = " – Class Library"
	var url = URL(string: "https://library.princeton2000.org")!
    var builtInIconsEnabled = true

    var author = "Justin Purnell"

    var homePage = Home()
    var theme = MyTheme()
}


