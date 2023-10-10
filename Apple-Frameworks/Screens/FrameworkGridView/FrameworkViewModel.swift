//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by WKS-MAC01 on 10/10/2023.
//

import SwiftUI

final class FrameworkViewModel: ObservableObject {
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }

    @Published var isShowingDetailView = false
    let columns: [GridItem] = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
}
