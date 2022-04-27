//
//  TodoRepository.swift
//  ReactiveMVVM-Template
//
//  Created by Sergi Hurtado on 27/4/22.
//

import Foundation

protocol TodoRepositoryProtocol {
    func fetchTodoList() -> [Todo]
    func fetchTodoDetail(id: UUID) -> Todo
}

class TodoRepository: TodoRepositoryProtocol {
    func fetchTodoDetail(id: UUID) -> Todo {
        return Todo(id: UUID(), title: "a", isCompleted: false)
    }
    
    
    func fetchTodoList() -> [Todo] {
        return []
    }
}
