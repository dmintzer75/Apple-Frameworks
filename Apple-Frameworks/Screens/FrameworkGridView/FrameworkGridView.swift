//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by WKS-MAC01 on 10/10/2023.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkViewModel()

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks) { framework in
                        FrameworkTitleView(framework: framework)
                            .onTapGesture {
                                viewModel.selectedFramework = framework
                                print(viewModel.selectedFramework!)
                            }
                    }
                }
            }
            .navigationTitle("🍎 Frameworks")
            .sheet(isPresented: $viewModel.isShowingDetailView, content: {
                FrameworkDetailView(
                    framework: viewModel.selectedFramework ?? MockData.frameworks[1],
                    isShowingDetailView: $viewModel.isShowingDetailView
                )
            })
        }
    }
}

#Preview {
    FrameworkGridView()
}
