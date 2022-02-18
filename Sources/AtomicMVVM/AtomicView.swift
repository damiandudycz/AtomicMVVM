public protocol AtomicView: ContainsViewModel, Emits, Listens where Emitted == ViewModel.Listenned, Listenned == ViewModel.Emitted {
    /// To be called when view is ready for binding with viewModel. For example in viewDidLoad if you use UIViewControllers
    /// or in init if you are using SwiftUI.
    func setupViewModel()
    init(viewModel: ViewModel)
}

public extension AtomicView {
    func setupViewModel() {
        setupBindings()
    }

    /// Create bindings between View and ViewModel.
    private func setupBindings() {
        listen(to: viewModel.emitted)
        viewModel.listen(to: emitted)
    }
}

public extension AtomicView {
    init(context: ViewModel.Context, dependencies: ViewModel.Dependencies) {
        self.init(viewModel: .init(context: context, dependencies: dependencies))
    }
}

public extension AtomicView where ViewModel.Context == Void {
    init(dependencies: ViewModel.Dependencies) {
        self.init(viewModel: .init(dependencies: dependencies))
    }
}

public extension AtomicView where ViewModel.Dependencies == Void {
    init(context: ViewModel.Context) {
        self.init(viewModel: .init(context: context))
    }
}

public extension AtomicView where ViewModel.Context == Void, ViewModel.Dependencies == Void {
    init() {
        self.init(viewModel: .init())
    }
}
