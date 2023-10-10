//
//  FrameworkTitleHorizontalView.swift
//  Apple-Frameworks
//
//  Created by WKS-MAC01 on 10/10/2023.
//

import SwiftUI

struct FrameworkTitleHorizontalView: View {
    let framework: Framework
    var body: some View {
        HStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 60, height: 60)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit() // able to scale
                .minimumScaleFactor(0.6)
                .padding()
        }
        .padding()
    }
}

#Preview {
    FrameworkTitleHorizontalView(framework: MockData.frameworks[1])
}
