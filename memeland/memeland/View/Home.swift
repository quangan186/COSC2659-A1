//
//  Home.swift
//  memeland
//
//  Created by Bui Quang An on 22/07/2022.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack(){
            Color("lightBlue")
                    VStack(spacing: 12){
                        Text("Welcome to")
                            .font(.custom("Montserrat-Light", size: 32)).foregroundColor(Color.white).frame(maxWidth: .infinity)

                        Text("MemeLand").font(.custom("Montserrat-Bold", size: 48)).foregroundColor(Color.white).frame(maxWidth: .infinity).padding()
                        NavigationLink(destination: MemeList(), label: {
                            Text("Get started").font(.title3).fontWeight(.semibold).padding([.top, .leading, .bottom])
                            Image(systemName: "arrow.right")
                                .padding([.top, .bottom, .trailing])
                        }).foregroundColor(Color("lightBlue")).background(.white).cornerRadius(15)
                        
                        }.frame(maxWidth: .infinity, alignment: .leading).padding()
            
        }.frame(maxHeight: .infinity, alignment: .top)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
