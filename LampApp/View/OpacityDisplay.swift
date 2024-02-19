//
//  OpacityDisplay.swift
//  LampApp
//
//  Created by Pouya Sadri on 18/02/2024.
//

import SwiftUI
//MARK: - Dispaly the current Opacity Value
struct OpacityDisplay: View {
	@Binding var opacity: Double

	var body: some View {
		Text("\(String(format: "%.2f", opacity))")
			.foregroundStyle(.white)
			.font(.system(size: 80))
			.opacity(opacity + 0.4)
			.offset(y: -60)
	}
}

#Preview {
	OpacityDisplay(opacity: .constant(0.1))
}
