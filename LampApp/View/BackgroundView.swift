//
//  BackgroundView.swift
//  LampApp
//
//  Created by Pouya Sadri on 18/02/2024.
//

import SwiftUI
//MARK: - Background view for the lamp interface
struct BackgroundView: View {
    var body: some View {
        Color("basebg")
			.ignoresSafeArea()
    }
}

#Preview {
    BackgroundView()
}
