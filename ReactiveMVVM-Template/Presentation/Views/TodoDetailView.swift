//
//  TodoDetailView.swift
//  ReactiveMVVM-Template
//
//  Created by Sergi Hurtado on 27/4/22.
//

import SwiftUI

struct TodoDetailView: View {
    
    @ObservedObject var viewModel: TodoDetailViewModel

    var body: some View {
        Text("Detail of " + (viewModel.todo?.title ?? ""))
//        NavigationView {
//            List(viewModel.todos) { todo in
//                Text(todo.title)
//            }
//            .navigationBarTitle(Text("Todo List"))
//        }
//        .onAppear {
//            self.viewModel.fetchTodos()
//        }
    }
}
