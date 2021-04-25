//
//  Badges.swift
//  ExampleProject
//
//  Created by Rivaldi Aliando on 25/04/21.
//

import SwiftUI

struct Badges: View {
    var body: some View {
        Badge()
    }
}

struct Badges_Previews: PreviewProvider {
    static var previews: some View {
        Badges()
    }
}

struct Badge: View {
    var body: some View {
        
        ZStack{
            
            Image(systemName: "bell.fill")
                .resizable()
                .frame(width: 70, height: 80)
            Text(" 3222 ")
                .padding(8)
                .foregroundColor(.white)
                .background(Color(.red))
                .cornerRadius(30)
                .offset(x: 25, y: -30)
                
        }
    }
}
