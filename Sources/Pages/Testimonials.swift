//
//  Testimonials.swift
//
//
//  Created by Deirdre Saoirse Moen on 7/13/24.
//

import Foundation
import Ignite

struct Testimonials: StaticPage {
	var title = "Testimonials"

	func body(context: PublishingContext) -> [BlockElement] {
		Text("Hello world!")
			.font(.title1)
	}
}
