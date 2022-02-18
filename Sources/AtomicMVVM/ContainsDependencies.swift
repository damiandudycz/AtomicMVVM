// Use for dependency injection. For example include Coordinator, Services, etc.
public protocol ContainsDependencies {
    associatedtype Dependencies
    var dependencies: Dependencies { get }
}

public extension ContainsDependencies where Dependencies == Void {
    var dependencies: Void { Void() }
}
