//
//  ErrorView.swift
//  Scrumdinger
//
//  Created by Angela Xu on 1/20/24.
//

import SwiftUI

struct ErrorView: View {
    let errorWrapper: ErrorWrapper
    @Environment(\.dismiss) private var dismiss

    var body: some View {
        NavigationStack {
            VStack{
                Text("An error has occurred")
                    .font(.title)
                    .padding(.bottom)
                Text(errorWrapper.error.localizedDescription)
                    .font(.headline)
                Text(errorWrapper.guidance)
                    .font(.caption)
                    .padding(.top)
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            .cornerRadius(16)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button("Dismiss") {
                        dismiss()
                    }
                }
            }
        }
    }
}

private enum SampleError: Error {
    case errorRequired
}

private var wrapper: ErrorWrapper {
    ErrorWrapper(error: SampleError.errorRequired,
                 guidance: "You can safely ignore this error")
}

#Preview {
    ErrorView(errorWrapper: wrapper)
}
