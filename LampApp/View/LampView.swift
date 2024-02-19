//
//  LampView.swift
//  LampApp
//
//  Created by Pouya Sadri on 18/02/2024.
//

import SwiftUI
//MARK: - the main view that assembles the lamp and its intractive components
struct LampView: View {
	@State private var isLampOn = false
	@State private var dragOffest : CGSize = .zero
	@State private var isDragging = false
	@State private var opacity = 0.1
    var body: some View {
		ZStack{
			BackgroundView()
			LampImage(isLampOn: $isLampOn, opacity: $opacity)
			HandleDragView(isDragging: $isDragging, dragOffset: $dragOffest, isLampOn: $isLampOn)
		}
    }
}

#Preview {
    LampView()
}
