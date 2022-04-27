//
//  TodoListView.swift
//  ReactiveMVVM-Template
//
//  Created by Sergi Hurtado on 26/4/22.
//

import SwiftUI

struct TodoListView: View {
    
    @ObservedObject var viewModel: TodoListViewModel
    
    var body: some View {
        List(viewModel.todos) { item in
            Text(item.title).onTapGesture {
                viewModel.open(item)
            }
        }
    }
}
