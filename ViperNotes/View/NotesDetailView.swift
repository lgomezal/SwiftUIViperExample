//
//  NotesDetailView.swift
//  ViperNotes
//
//  Created by Luis Gómez Alonso on 24/2/21.
//

import SwiftUI
 
struct NotesDetailView: View {
    
    var note: NoteViewModel
    
    var body: some View {
        VStack() {
            Text("Title: \(note.title)")
            Text("Body: \(note.body)")
            Spacer()
        }
        .navigationBarTitle(note.date)
    }
}

/*struct NotesDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NotesDetailView()
    }
}*/
