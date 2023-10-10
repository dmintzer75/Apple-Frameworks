//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by WKS-MAC01 on 10/10/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    @Binding var isShowingDetailView: Bool
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailView: $isShowingDetailView)

            Spacer()

            FrameworkTitleView(framework: framework)

            Text(framework.description)
                .font(.body)
                .padding()

            Spacer()

            Button {
                print("Learn More")
            } label: {
                AFButton(title: "Learn More")
            }
            .padding()
        }
    }
}

#Preview {
    FrameworkDetailView(framework: MockData.frameworks[1], isShowingDetailView: .constant(true))
}
