//
//  OpacityControl.swift
//  LampApp
//
//  Created by Pouya Sadri on 18/02/2024.
//

import SwiftUI
//MARK: - Controls the opacity of the light effect
struct OpacityControl: View {
	@Binding var opacity : Double
    var body: some View {
		VStack{
			Spacer()
				.frame(height: 600)
			ZStack{
				OpacityDisplay(opacity: $opacity)
				Slider(value: $opacity, in: 0...0.3, step: 0.05)
					.accentColor(.white)
				Text("OPACITY")
					.foregroundStyle(.white)
					.font(.title)
					.offset(y:40)
			}
			.offset(x: -40)
			.padding(80)
		}
    }
}

#Preview {
	OpacityControl(opacity: .constant(0.1))
}
