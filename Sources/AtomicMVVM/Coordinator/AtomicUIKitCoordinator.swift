import UIKit

public protocol AtomicUIKitCoordinator {
    
    var navigationController: UINavigationController { get }
    
    init(navigationController: UINavigationController)
    
    func push<Module>(module: Module.Type, animated: Bool, context: Module.ViewModel.Context, dependencies: Module.ViewModel.Dependencies) where Module: AtomicView, Module: UIViewController
    func present<Module>(module: Module.Type, animated: Bool, context: Module.ViewModel.Context, dependencies: Module.ViewModel.Dependencies) where Module: AtomicView, Module: UIViewController
    func push(viewController: UIViewController, animated: Bool)
    func present(viewController: UIViewController, animated: Bool)
    
}

public extension AtomicUIKitCoordinator {
    
    func push<Module>(module: Module.Type, animated: Bool = true, context: Module.ViewModel.Context, dependencies: Module.ViewModel.Dependencies) where Module: AtomicView, Module: UIViewController {
        let module = Module.init(viewModel: .init(context: context, dependencies: dependencies))
        navigationController.pushViewController(module, animated: animated)
    }
    
    func present<Module>(module: Module.Type, animated: Bool = true, context: Module.ViewModel.Context, dependencies: Module.ViewModel.Dependencies) where Module: AtomicView, Module: UIViewController {
        let module = Module.init(viewModel: .init(context: context, dependencies: dependencies))
        navigationController.present(module, animated: animated)
    }
    
    func push(viewController: UIViewController, animated: Bool = true) {
        navigationController.pushViewController(viewController, animated: animated)
    }

    func present(viewController: UIViewController, animated: Bool = true) {
        navigationController.present(viewController, animated: animated)
    }
    
}

public extension AtomicUIKitCoordinator {

    func push<Module>(module: Module.Type, animated: Bool = true, dependencies: Module.ViewModel.Dependencies) where Module: AtomicView, Module: UIViewController, Module.ViewModel.Context == Void {
        push(module: module, animated: animated, context: Void(), dependencies: dependencies)
    }
    
    func push<Module>(module: Module.Type, animated: Bool = true, context: Module.ViewModel.Context) where Module: AtomicView, Module: UIViewController, Module.ViewModel.Dependencies == Void {
        push(module: module, animated: animated, context: context, dependencies: Void())
    }
    
    func push<Module>(module: Module.Type, animated: Bool = true) where Module: AtomicView, Module: UIViewController, Module.ViewModel.Context == Void, Module.ViewModel.Dependencies == Void {
        push(module: module, animated: animated, context: Void(), dependencies: Void())
    }
    
    func present<Module>(module: Module.Type, animated: Bool = true, dependencies: Module.ViewModel.Dependencies) where Module: AtomicView, Module: UIViewController, Module.ViewModel.Context == Void {
        present(module: module, animated: animated, context: Void(), dependencies: dependencies)
    }
    
    func present<Module>(module: Module.Type, animated: Bool = true, context: Module.ViewModel.Context) where Module: AtomicView, Module: UIViewController, Module.ViewModel.Dependencies == Void {
        present(module: module, animated: animated, context: context, dependencies: Void())
    }
    
    func present<Module>(module: Module.Type, animated: Bool = true) where Module: AtomicView, Module: UIViewController, Module.ViewModel.Context == Void, Module.ViewModel.Dependencies == Void {
        present(module: module, animated: animated, context: Void(), dependencies: Void())
    }

}
