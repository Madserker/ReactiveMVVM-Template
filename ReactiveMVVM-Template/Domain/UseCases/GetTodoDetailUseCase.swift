//
//  GetTodoDetailUseCase.swift
//  ReactiveMVVM-Template
//
//  Created by Sergi Hurtado on 27/4/22.
//

import Foundation

protocol GetTodoDetailUseCaseProtocol {
    func execute(id: UUID) -> Result<Todo, Error>
}

class GetTodoDetailUseCase: GetTodoDetailUseCaseProtocol {
    
    private let todoRepository: TodoRepositoryProtocol
    
    init(todoRepository: TodoRepositoryProtocol) {
        self.todoRepository = todoRepository
    }
    
    func execute(id: UUID) -> Result<Todo, Error> {
        return .success(Todo(title: "asd"))
        //return todoRepository.fetchTodoDetail(id: UUID())
    }
}
