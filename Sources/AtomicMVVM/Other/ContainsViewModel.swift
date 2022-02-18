public protocol ContainsViewModel {
    associatedtype ViewModel: AtomicViewModel
    var viewModel: ViewModel { get }
}
