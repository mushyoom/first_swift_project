//
//  ContentView.swift
//  FirstSwiftProject
//
//  Created by Shyann on 2023/06/18.
//

import SwiftUI

struct ContentView: View {
    @State var outputText:String = "Simon Game"
    
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
