//
//  ContentView.swift
//  H4K0R-News
//
//  Created by Veronica Markova on 3/26/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var networkManager = NetworkManager(
    )
    
    var body: some View {
        NavigationView{
            List(networkManager.posts){ post in
                HStack{
                    Text(String(post.points))
                    
                    Text(post.title)
                }
            }
            .navigationBarTitle("H4X0R NEWS")
        }
        .onAppear(perform: {
            self.networkManager.fetchData()
        })
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

