//
//  GetTodoListUseCase.swift
//  ReactiveMVVM-Template
//
//  Created by Sergi Hurtado on 27/4/22.
//

import Foundation

protocol GetTodoListUseCaseProtocol {
    func execute() -> Result<[Todo], Error>
}

class GetTodoListUseCase: GetTodoListUseCaseProtocol {
    
    private let todoRepository: TodoRepositoryProtocol
    
    init(todoRepository: TodoRepositoryProtocol) {
        self.todoRepository = todoRepository
    }
    
    func execute() -> Result<[Todo], Error> {
        return .success([Todo(title: "gatoformo"), Todo(title: "pelicano")])
        //return todoRepository.fetchTodoList()
    }
}
