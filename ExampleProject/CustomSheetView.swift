//
//  CustomSheetView.swift
//  ExampleProject
//
//  Created by Rivaldi Aliando on 25/04/21.
//

import SwiftUI
import PartialSheet

struct CustomSheetView: View {
    var body: some View {
        CustomSheet()
    }
}

struct CustomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        CustomSheetView()
    }
}

struct CustomSheet: View {
    @EnvironmentObject var partialSheet : PartialSheetManager
    
    var body: some View {
        NavigationView {
            HStack{
                ScrollView{
                    VStack(alignment: .center, spacing: 0, content: {
                        Badges()
                        Badges()
                        Badges()
                        Badges()
                        Badges()
                        Badges()
                    })
                }
                VStack(alignment: .center) {
                    Spacer()
                    Button(action: {
                        self.partialSheet.showPartialSheet({
                            print("dismissed")
                        }) {
                            VStack(alignment: .center, spacing: 0, content: {
                                Badges()
                                Badges()
                                Badges()
                                Badges()
                                Badges()
                                Badges()
                            })
                        }
                    }, label: {
                        Text("Show Partial Sheet")
                    })
                    Spacer()
                }
                .navigationBarTitle("Partial Sheet")
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .addPartialSheet()
    }
}
