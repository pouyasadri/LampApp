//
//  HandleDragView.swift
//  LampApp
//
//  Created by Pouya Sadri on 18/02/2024.
//

import SwiftUI
//MARK: - Handles the drag gesture to control the lamp
struct HandleDragView: View {
	@Binding var isDragging : Bool
	@Binding var dragOffset : CGSize
	@Binding var isLampOn : Bool
	
    var body: some View {
        HandleView()
			.offset(x:140 , y: isDragging ? dragOffset.height : -150)
			.animation(.spring(duration: 2,bounce: 0.3), value: isDragging)
			.gesture(
				DragGesture()
					.onChanged{value in
						isDragging = true
						dragOffset = value.translation
					}
					.onEnded{ value in
						isDragging = false
						dragOffset = .zero
						
						if value.translation.height > 20 {
							withAnimation{
								isLampOn.toggle()
							}
						}
						
					}
			
			)
    }
}

#Preview {
	HandleDragView(isDragging: .constant(false), dragOffset: .constant(.zero), isLampOn: .constant(false))
}
