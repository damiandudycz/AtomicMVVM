public protocol Listens {
    associatedtype Listenned
    // Listened will be stored for reference in case it's needed
    func listen(to listened: Listenned)
}

public extension Listens where Listenned == Void {
    func listen(to listened: Void) {}
}
