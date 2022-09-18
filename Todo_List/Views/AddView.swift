//
//  AddView.swift
//  Todo_List
//
//  Created by Patrick Nguyen on 2022-09-13.
//

import SwiftUI

struct AddView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var listViewModel: ListViewModel
    @State var textFieldText: String = ""
    
    var body: some View {
        ScrollView{
            VStack {
                TextField("Type here", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 40)
                    .background(Color(.systemGray5))
                    .cornerRadius(5)
                
                Button(action: saveButtonPressed, label: {
                    Text("Save")
                        .foregroundColor(.white)
                        .font(.headline)
                        .frame(height: 50)
                        .frame(maxWidth: .infinity)
                        .background(.blue)
                        .cornerRadius(5)
                })
            }
            .padding(14)
        }
        .navigationTitle("Add an item")
    }
    
    func saveButtonPressed() {
        listViewModel.addItem(title: textFieldText)
        presentationMode.wrappedValue.dismiss()
    }
    
    
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AddView()
        }
        .environmentObject(ListViewModel())
    }
}
