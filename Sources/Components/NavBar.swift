//
//  NavBar.swift
//
//
//  Created by Deirdre Saoirse Moen on 7/13/24.
//

import Foundation
import Ignite

struct NavBar: Component {
	func body(context: PublishingContext) -> [any PageElement] {
		NavigationBar(logo: Image("/images/logo.svg", description: "")) {
			Link("Blog", target: "/posts")
				.padding(.trailing, .medium)
			Link("Testimonials", target: "/testimonials")
				.padding(.trailing, .medium)

			Link("Testimonials", target: "/testimonials")
				.padding(.trailing, .medium)

			Dropdown("Find Lily's Parents") {
				Link(target: "https://hachyderm.io/@deirdresm") {
					Image(systemName: "mastodon")
					" Mastodon"
				}
				.relationship(.me)
				.target(.blank)

				Link(target: "mailto:deirdre@deirdre.net") {
					Image(systemName: "envelope-fill")
					" E-mail"
				}
				.relationship(.me)
				.target(.blank)

				Link(target: "https://infosec.exchange/@unixmercenary") {
					Image(systemName: "mastodon")
					" Mastodon"
				}
				.relationship(.alternate)
				.target(.blank)

				Link(target: "mailto:rick@linuxmafia.com") {
					Image(systemName: "envelope-fill")
					" E-mail"
				}
				.relationship(.alternate)
				.target(.blank)
			}
		}
		.navigationBarStyle(.dark)
		.navigationItemAlignment(.trailing)
		.background(Color(hex: "#222222"))
		.position(.fixedTop)
	}
}
