//
//  LightShape.swift
//  LampApp
//
//  Created by Pouya Sadri on 18/02/2024.
//

import SwiftUI

//MARK: - Represent the shape of the light emitted by the lamp
struct LightShape: Shape {
	func path(in rect: CGRect) -> Path {
		Path { path in
			path.addLines([
				.init(x: rect.width * 0.1, y: 0),
				.init(x: rect.width * 0.7, y: 0),
				.init(x: rect.width, y: rect.height * 0.6),
				.init(x: 0, y: rect.height * 0.6)
			])
		}
	}
}
