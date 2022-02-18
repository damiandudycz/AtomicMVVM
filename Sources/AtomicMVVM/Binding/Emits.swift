// In ViewModel emitted property should contain the final state of data, that can be used directly by the the view.
// Store other types of data inside internalState variable, and map it's form to final form for emitted.

public protocol Emits {
    associatedtype Emitted
    var emitted: Emitted { get }
}

public extension Emits where Emitted == Void {
    var emitted: Void { Void() }
}
