import SwiftUI

public extension AtomicView where ViewModel: ObservableObject {
    // When working with SwiftUI we can ignore listen(to:) function.
    // Instead we should make ViewModel: ObservableObject and create a @State variable called emitted.
    // This state should not contain binding mechanisms, because it is bindable already. Instead we should
    // use simple type, like struct, and write values directly to it.
    func listen(to listened: ViewModel.Emitted) {}
}
