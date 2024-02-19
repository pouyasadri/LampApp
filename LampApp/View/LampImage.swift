//
//  LampImage.swift
//  LampApp
//
//  Created by Pouya Sadri on 18/02/2024.
//

import SwiftUI
//MARK: - Dispaly the lamp image and its light effect
struct LampImage: View {
	@Binding var isLampOn: Bool
	@Binding var opacity: Double

	var body: some View {
		ZStack {
			if isLampOn {
				LightEffect(opacity: $opacity)
			}
			Image("lamp")
				.resizable()
				.aspectRatio(contentMode: .fit)
				.frame(width: 300, height: 600)
				.offset(x: -50, y: -250)
			if isLampOn {
				OpacityControl(opacity: $opacity)
			}
			PowerButton(isLampOn: $isLampOn)
		}
	}
}


#Preview {
	LampImage(isLampOn: .constant(false), opacity: .constant(0.1))
}
