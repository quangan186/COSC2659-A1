//
//  IntroVIew.swift
//  memeland
//
//  Created by Bui Quang An on 22/07/2022.
//

import SwiftUI

struct IntroVIew: View {
    var body: some View {
            ZStack(){
                Color("lightBlue").edgesIgnoringSafeArea(.all).opacity(0.9)
                VStack(alignment: .leading){
                    Text("Welcome to")
                        .fontWeight(.thin)
                        .foregroundColor(Color.white)
                        .lineLimit(0).font(.custom("Montserrat-Light", size: 40))
                    Text("MemeLand")
                        .font(.custom("Poppins", size: 60))
                        .fontWeight(.heavy)
                        .foregroundColor(Color.white)
                        .multilineTextAlignment(.center)
                        .padding(.vertical, 5.0)
                    
                }.frame(width: .infinity,  alignment: .center)
            }
        
    }
}

struct IntroVIew_Previews: PreviewProvider {
    static var previews: some View {
        IntroVIew()
    }
}
