//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by WKS-MAC01 on 10/10/2023.
//

import SwiftUI

struct FrameworkTitleView: View {
    let framework: Framework
    var body: some View {
        VStack {
            Image(framework.imageName)
                .resizable()
                .frame(width: 90, height: 90)
            Text(framework.name)
                .font(.title3)
                .fontWeight(.semibold)
                .scaledToFit() // able to scale
                .minimumScaleFactor(0.6)
        }
        .padding()
    }
}
