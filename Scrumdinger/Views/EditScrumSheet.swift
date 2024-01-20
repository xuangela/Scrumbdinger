//
//  EditScrumSheet.swift
//  Scrumdinger
//
//  Created by Angela Xu on 1/19/24.
//

import SwiftUI

struct EditScrumSheet: View {
    @Binding var scrum: DailyScrum
    @Binding var isPresentingEditView: Bool
    
    var body: some View {
        NavigationStack {
            DetailEditView(scrum: $scrum)
                .navigationTitle(scrum.title)
                .toolbar {
                    ToolbarItem(placement: .cancellationAction) {
                        Button("Cancel") {
                            isPresentingEditView = false
                        }
                    }
                    ToolbarItem(placement: .confirmationAction) {
                        Button("Done") {
                            isPresentingEditView = false
                        }
                    }
                }
        }
    }
}

#Preview {
    EditScrumSheet(scrum: .constant(DailyScrum.sampleData[0]),
                   isPresentingEditView: .constant(true))
}
