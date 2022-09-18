//
//  ListRowView.swift
//  Todo_List
//
//  Created by Patrick Nguyen on 2022-09-13.
//

import SwiftUI

struct ListRowView: View {
    let item: ItemModel
    
    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding()
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var item1 = ItemModel(title: "first", isCompleted: true)
    static var item2 = ItemModel(title: "second", isCompleted: false)
    static var previews: some View {
        ListRowView(item: item1)
    }
}
