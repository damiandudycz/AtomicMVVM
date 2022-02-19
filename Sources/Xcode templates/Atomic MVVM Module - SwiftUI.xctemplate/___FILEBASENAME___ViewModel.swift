//___FILEHEADER___

import SwiftUI
import AtomicMVVM

// MARK: - UIKit oriented AtomicViewModel.

// Note: Remember to pass mapped variables from Internal State to Emitted variable, when appropriate.
final class ___FILEBASENAME___: AtomicViewModel {

    // MARK: - Dependencies - uncomment if not using Void.

    // let dependencies: Dependencies
    @State
    var emitted: Emitted = Emitted()

    // MARK: - Lifecycle.
    
    required init(context: Context, dependencies: Dependencies) {
        // Restore if context and dependencies are not Void
        // self.dependencies = dependencies
    }

}

// MARK: - MVVM Binding - uncomment to enable listening to events from view or emitting events to view.

extension ___FILEBASENAME___ {

    // func listen(to listening: Listened) {
    //
    // }

    // var emitted: Emitted {
    //
    // }

}

// MARK: - ObservableObject implementation for SwiftUI usage.

extension ___FILEBASENAME___: ObservableObject {}

// MARK: - Helper types. They can also be inferred from ViewModel if you set them correctly.

extension ___FILEBASENAME___ {

    typealias Context = Void
    typealias Dependencies = Void
    // SwiftUI module should use simple types for Emitted, without additional mechanism for binding.
    // Binding mechanism is already provided by @State var emitted: Emitted = Emitted().
    // In views please just use values directly from emitted variable.
    typealias Emitted = Void
    typealias Listened = Void

}
