//
//  PowerButton.swift
//  LampApp
//
//  Created by Pouya Sadri on 18/02/2024.
//

import SwiftUI
//MARK: - Toggle switch to turn the lamp on and off
struct PowerButton: View {
	@Binding var isLampOn: Bool

	var body: some View {
		ZStack {
			Rectangle()
				.foregroundStyle(isLampOn ? .green : .red)
				.frame(width: 250, height: 100)
				.clipShape(CustomShape(corner: [.bottomRight, .topLeft], radii: 100))
				.opacity(0.1)
			Text(isLampOn ? "ON" : "OFF")
				.font(.title)
				.fontWeight(.bold)
				.offset(x: -40)
				.foregroundStyle(isLampOn ? .green : .red)
		}
		.onTapGesture {
			withAnimation{
				isLampOn.toggle()
			}
		}
		.offset(x: 170, y: 360)
	}
}

#Preview {
	PowerButton(isLampOn: .constant(false))
}

struct CustomShape : Shape{
	var corner : UIRectCorner
	var radii : CGFloat
	
	func path(in rect: CGRect) -> Path {
		let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corner, cornerRadii: CGSize(width: radii, height: radii))
		
		return Path(path.cgPath)
	}
}
