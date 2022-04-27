//
//  CoordinatorView.swift
//  ReactiveMVVM-Template
//
//  Created by Sergi Hurtado on 27/4/22.
//

import Foundation
import SwiftUI

enum Screen {
    case TodoList
    case TodoDetail(UUID)
}

struct MainCoordinator: View {
    
    @State var stack: [Screen] = [.TodoList]
    
    private let todoRepository = TodoRepository()
    
    var body: some View {
        NavigationView {
            NavigationStack(stack: $stack) { screen in
                switch screen {
                case .TodoList:
                    getTodoList()
                case .TodoDetail(let id):
                    getTodoDetail(id: id)
                }
            }
        }
    }
    
    func navigate(to screen: Screen) {
        stack.append(screen)
    }
    
    private func getTodoList() -> TodoListView {
        let todoListViewModel = TodoListViewModel(coordinator: self, getTodoListUseCase: GetTodoListUseCase(todoRepository: todoRepository))
        return TodoListView(viewModel: todoListViewModel)
    }

    private func getTodoDetail(id: UUID) -> TodoDetailView {
        let todoDetailViewModel = TodoDetailViewModel(coordinator: self, id: id, getTodoDetailUseCase: GetTodoDetailUseCase(todoRepository: todoRepository))
        return TodoDetailView(viewModel: todoDetailViewModel)
    }
}
