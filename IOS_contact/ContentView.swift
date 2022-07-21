//
//  ContentView.swift
//  IOS_contact
//
//  Created by Luan, Nguyen Thanh on 21/07/2022.
//

import SwiftUI

struct ContentView: View {
    
    let heightRatio:CGFloat = 0.3
    
    private let name : String
    init (_ name: String ){
        self.name = name
    }
    var body: some View {
        GeometryReader { geo in
            ZStack{
                
                Color.white
                    .ignoresSafeArea()
                VStack{
                    GifImage("ricardo-flick")
                        .frame(width: geo.size.width, height: geo.size.height*heightRatio)
                    
                    ZStack{
                        
                        Color.yellow
                            .edgesIgnoringSafeArea(.all)
                        VStack{
                            Text(name)
                                .bold().font(.custom("FONT_NAME", size: 25)).foregroundColor(.white)
//                                .frame(maxHeight:.infinity, alignment: .top)
                                .padding(.top,geo.size.height*0.2)
                            Spacer()
                        }
                    }
                }
                VStack{
                    ZStack{
                        Color.white.clipShape(Circle())
                            .frame(width: geo.size.width*0.5, height:geo.size.height*heightRatio, alignment: .trailing)
                            .shadow(radius: 7)
                            .position(x: geo.size.width*0.5,y:geo.size.height*heightRatio)
                        Image("ricardo")
                            .clipShape(Circle())
                            .overlay(Circle().stroke(Color(.white),lineWidth: 4))
                            .shadow(radius: 7)
                            .position(x: geo.size.width*0.5,y:geo.size.height*heightRatio)
                    }
                    Spacer()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView("HUynh WUoc TRij")
    }
}
