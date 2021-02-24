//
//  NotesPresenter.swift
//  ViperNotes
//
//  Created by Luis Gómez Alonso on 24/2/21.
//

import SwiftUI
import Combine
 
class NotesPresenter: ObservableObject {
 
    private let interactor: NotesInteractor
    private let router = NotesRouter()
    private var cancellables = Set<AnyCancellable>()
    @Published var noteViewModels: [NoteViewModel] = []
 
    init(interactor: NotesInteractor) {
        self.interactor = interactor
        
        interactor.$noteViewModels
        .assign(to: \.noteViewModels, on: self)
        .store(in: &cancellables)
    }
    
    // MARK: Events
    func addNewNote() {
        interactor.addNewNote()
    }
    
    func delete(_ index: IndexSet) {
        interactor.deleteNote(index)
    }
    
    // MARK: Navigation
    func detailView(note: NoteViewModel) -> some View {
        router.detailView(note: note)
    }
    
    func topButton() -> some View {
        if interactor.showAddButton() {
                return Button(action: interactor.addNewNote) {
                  Image(systemName: "plus")
                }
            } else {
                return Button(action: interactor.deleteAllNotes) {
                  Image(systemName: "trash")
                }
            }
        }
}
