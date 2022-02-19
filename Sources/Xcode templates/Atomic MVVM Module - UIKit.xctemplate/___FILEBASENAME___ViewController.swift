//___FILEHEADER___

import UIKit
import AtomicMVVM

// MARK: - UIKit oriented AtomicView.

final class ___FILEBASENAME___: UIViewController, AtomicView {
    let viewModel: ___VARIABLE_productName:identifier___ViewModel

    init(viewModel: ___VARIABLE_productName:identifier___ViewModel) {
        self.viewModel = viewModel
        super.init(nibName: nil, bundle: nil)
    }

    @available (*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViewModel()
    }

}

// MARK: - MVVM Binding - uncomment to enable listening to events from viewModel or emitting events to viewModel.

extension ___FILEBASENAME___ {
    
    // func listen(to listening: Listened) {
    //
    // }

    // var emitted: Emitted {
    //
    // }
    
}

// MARK: - Helper types matching ViewModel types. They can also be inferred from ViewModel if you set them correctly.

extension ___FILEBASENAME___ {

    typealias Context = ViewModel.Context
    typealias Dependencies = ViewModel.Dependencies
    typealias Emitted = ViewModel.Listenned
    typealias Listenned = ViewModel.Emitted

}
