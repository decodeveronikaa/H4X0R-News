//
//  ContentView.swift
//  H4K0R-News
//
//  Created by Veronica Markova on 3/26/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            List(post){ post in
                
                Text(post.title)
            }
            .navigationBarTitle("H4X0R NEWS")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

let post = [

    Post(objectID: "", points: 1, title: "hi", url: "")

]

