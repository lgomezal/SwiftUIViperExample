//
//  NotesListView.swift
//  ViperNotes
//
//  Created by Luis Gómez Alonso on 24/2/21.
//

import SwiftUI
 
struct NotesListView: View {
    
    @ObservedObject var presenter: NotesPresenter
    
    var body: some View {
        NavigationView {
            List {
              ForEach (presenter.noteViewModels, id: \.id) { item in
                NavigationLink(item.title, destination: self.presenter.detailView(note: item))
              }
              .onDelete(perform: presenter.delete)
            }
            .navigationBarTitle("Notes", displayMode: .inline)
            .navigationBarItems(trailing: presenter.topButton())
        }
    }
}

/*struct NotesListView_Previews: PreviewProvider {
    static var previews: some View {
        NotesListView()
    }
}*/
