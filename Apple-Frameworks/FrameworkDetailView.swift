//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by WKS-MAC01 on 10/10/2023.
//

import SwiftUI

struct FrameworkDetailView: View {
    var framework: Framework
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button {} label: {
                    Image(systemName: "xmark")
                        .foregroundStyle(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }
            }
            .padding()

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
    FrameworkDetailView(framework: MockData.frameworks[1])
}
