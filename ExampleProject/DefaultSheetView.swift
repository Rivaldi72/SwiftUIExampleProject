//
//  SheetView.swift
//  ExampleProject
//
//  Created by Rivaldi Aliando on 25/04/21.
//

import SwiftUI

struct DefaultSheetView: View {
    @State private var showingSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showingSheet.toggle()
        }
        .sheet(isPresented: $showingSheet) {
            Sheet()
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        DefaultSheetView()
    }
}

struct Sheet: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        Button("Press to dismiss") {
            presentationMode.wrappedValue.dismiss()
        }
        .font(.title)
        .padding()
        .background(Color.black)
    }
}
