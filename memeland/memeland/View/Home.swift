/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Bui Quang An
  ID: 3877482
  Created  date: 22/07/2022
  Last modified: 04/08/2022
  Acknowledgement: Hacking with swift
*/
import SwiftUI

struct Home: View {
    var body: some View {
        ZStack(){
            Color("lightBlue")
                    VStack(spacing: 12){
                        Text("Welcome to")
                            .font(.custom("Montserrat-Light", size: 32)).foregroundColor(Color.white).frame(maxWidth: .infinity)

                        Text("MemeLand").font(.custom("Montserrat-Bold", size: 48)).foregroundColor(Color.white).frame(maxWidth: .infinity).padding()
                        
                        Text("Find your favorite meme templates here")
                            .font(.custom("Montserrat-Regular", size: 16)).fontWeight(.regular).foregroundColor(Color.white).frame(maxWidth: .infinity).padding(.vertical)
                        // Button uses to go to the list
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
