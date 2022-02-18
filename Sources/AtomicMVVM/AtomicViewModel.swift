public protocol AtomicViewModel: Emits, Listens, ContainsContext, ContainsDependencies {
    init(context: Context, dependencies: Dependencies)
}

public extension AtomicViewModel where Context == Void {
    init(dependencies: Dependencies) {
        self.init(context: Void(), dependencies: dependencies)
    }
}

public extension AtomicViewModel where Dependencies == Void {
    init(context: Context) {
        self.init(context: context, dependencies: Void())
    }
}

public extension AtomicViewModel where Context == Void, Dependencies == Void {
    init() {
        self.init(context: Void(), dependencies: Void())
    }
}
