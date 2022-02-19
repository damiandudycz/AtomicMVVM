public protocol Listens {
    associatedtype Listenned
    // Listened will be stored for reference in case it's needed
    func listen(to listened: Listened)
}

public extension Listens where Listened == Void {
    func listen(to listened: Void) {}
}
