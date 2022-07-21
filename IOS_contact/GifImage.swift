//
//  GifImage.swift
//  IOS_contact
//
//  Created by Luan, Nguyen Thanh on 21/07/2022.
//

import Foundation
//
//  GifImage.swift
//  Lab3
//
//  Created by Luan, Nguyen Thanh on 14/07/2022.
//

import Foundation
import SwiftUI
import WebKit
struct GifImage:UIViewRepresentable{
    private let name : String
    init (_ name: String ){
        self.name = name
    }
    func makeUIView (context:Context )-> WKWebView{
        let webView = WKWebView()
        let url = Bundle.main.url(forResource: name, withExtension: "gif")!
        let data = try! Data(contentsOf: url )
        
        webView.load(data , mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: url.deletingLastPathComponent())
        
        return webView
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        
    }
}
