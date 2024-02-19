//
//  LightEffect.swift
//  LampApp
//
//  Created by Pouya Sadri on 18/02/2024.
//

import SwiftUI
//MARK: - Light effect for the lamp
struct LightEffect: View {
	@Binding var opacity: Double

	var body: some View {
		LightShape()
			.fill(LinearGradient(gradient: Gradient(colors: [Color.white, Color.clear, Color.clear]), startPoint: .top, endPoint: .bottom))
			.frame(width: 300, height: 600)
			.foregroundColor(Color.blue)
			.offset(x: -35, y: 250)
			.opacity(opacity)
	}
}

#Preview {
	LightEffect(opacity: .constant(0.1))
}
