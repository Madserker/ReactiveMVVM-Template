//
//  TodoDetailViewModel.swift
//  ReactiveMVVM-Template
//
//  Created by Sergi Hurtado on 27/4/22.
//

import Foundation

class TodoDetailViewModel: ObservableObject {
    @Published var todo: Todo?
    @Published var isCompleted = false
    
    private let coordinator: MainCoordinator
    
    private let getTodoDetailUseCase: GetTodoDetailUseCaseProtocol
    private let id: UUID
        
    init(coordinator: MainCoordinator,
        id: UUID,
        getTodoDetailUseCase: GetTodoDetailUseCaseProtocol) {
        self.coordinator = coordinator
        self.id = id
        self.getTodoDetailUseCase = getTodoDetailUseCase
        loadData()
    }
    
    private func loadData() {
        switch getTodoDetailUseCase.execute(id: id) {
        case .success(let result):
            todo = result
        case .failure(_):
            break
        }
        isCompleted = true
    }
}
