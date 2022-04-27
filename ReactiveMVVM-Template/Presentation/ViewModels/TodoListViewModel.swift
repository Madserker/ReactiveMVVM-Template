//
//  ToDoListViewModel.swift
//  ReactiveMVVM-Template
//
//  Created by Sergi Hurtado on 26/4/22.
//

import Foundation

final class TodoListViewModel: ObservableObject, Identifiable {
    @Published var todos = [Todo]()
    @Published var isCompleted = false
    
    private let coordinator: MainCoordinator
    
    private let getTodoListUseCase: GetTodoListUseCaseProtocol
        
    init(coordinator: MainCoordinator,
        getTodoListUseCase: GetTodoListUseCaseProtocol) {
        self.coordinator = coordinator
        self.getTodoListUseCase = getTodoListUseCase
        loadData()
    }
    
    private func loadData() {
        switch getTodoListUseCase.execute() {
        case .success(let result):
            todos = result
        case .failure(_):
            break
        }
        isCompleted = true
    }
    
    func open(_ item: Todo) {
        coordinator.navigate(to: .TodoDetail(item.id))
    }
}
