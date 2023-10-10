//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by WKS-MAC01 on 10/10/2023.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var viewModel = FrameworkViewModel()

    var body: some View {
        NavigationStack {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(
                        destination: FrameworkDetailView(
                            framework: framework,
                            isShowingDetailView: $viewModel.isShowingDetailView))
                    {
                        FrameworkTitleHorizontalView(framework: framework)
                    }
                }
            }
            .background(.ultraThinMaterial)
            .navigationTitle("🍎 Frameworks")
        }
        .tint(Color(.label))
    }
}

#Preview {
    FrameworkListView()
}
