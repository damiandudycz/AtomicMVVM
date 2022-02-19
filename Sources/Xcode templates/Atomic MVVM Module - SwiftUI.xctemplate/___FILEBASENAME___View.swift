//___FILEHEADER___

import SwiftUI
import AtomicMVVM

// MARK: - SwiftUI oriented AtomicView.

struct ___FILEBASENAME___: View, AtomicView {
    @ObservedObject
    var viewModel: ___VARIABLE_productName:identifier___ViewModel

    init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.viewModel = viewModel
        setupViewModel()
    }

    var body: some View {
        Text("Hello world!")
    }

    // MARK: - MVVM Binding - uncomment to enable emitting events to viewModel.
    
    // var emitted: ___VARIABLE_productName:identifier___ViewModel.Listened { .init() }

}

// MARK: - Helper types matching ViewModel types. They can also be inferred from ViewModel if you set them correctly.

extension ___FILEBASENAME___ {

    typealias Context = ViewModel.Context
    typealias Dependencies = ViewModel.Dependencies
    typealias Emitted = ViewModel.Listenned
    typealias Listenned = ViewModel.Emitted

}
