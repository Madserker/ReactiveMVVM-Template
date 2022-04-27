//
//  Todo.swift
//  ReactiveMVVM-Template
//
//  Created by Sergi Hurtado on 26/4/22.
//

import Foundation

struct Todo: Identifiable {
    var id = UUID()
    var title: String
    var isCompleted = false
    var detail: TodoDetail?
}

struct TodoDetail {
    var description: String
    var author: String
}
