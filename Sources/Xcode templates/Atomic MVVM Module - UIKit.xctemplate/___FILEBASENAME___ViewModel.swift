//___FILEHEADER___

import Foundation
import AtomicMVVM

// MARK: - UIKit oriented AtomicViewModel.

// Note: Remember to pass mapped variables from Internal State to Emitted variable, when appropriate.
final class ___FILEBASENAME___: AtomicViewModel {

    // MARK: - Dependencies - uncomment if not using Void.

    // let dependencies: Dependencies
    
    // MARK: - Lifecycle.

    required init(context: Context, dependencies: Dependencies) {
        // Use context to set internal state of the ViewModel.
        
        // Restore if dependencies are not Void.
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

// MARK: - Helper types. They can also be inferred from ViewModel if you set them correctly.

extension ___FILEBASENAME___ {

    typealias Context = Void
    typealias Dependencies = Void
    typealias InternalState = Void
    typealias Emitted = Void
    typealias Listened = Void

}
