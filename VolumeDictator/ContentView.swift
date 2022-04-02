//
//  ContentView.swift
//  VolumeDictator
//
//  Created by FUKA on 2.4.2022.
//

import SwiftUI
import MediaPlayer
import WebKit

struct ContentView: View {
    @State private var soundLevel: Float = 0.0
    @State private var showWebView = false
    
    var body: some View {
        Text("I'am the only volume dictator, and that is it!")
            .padding()
        
        Section {
            Button {
                showWebView.toggle()
            } label: {
                Text("Play youtube video")
            }
            .sheet(isPresented: $showWebView) {
                WebView(url: URL(string: "https://www.youtube.com/watch?v=P3ALwKeSEYs")!)
            }
        }
        
        
    }
}




struct WebView: UIViewRepresentable {
 
    var url: URL
 
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
 
    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
