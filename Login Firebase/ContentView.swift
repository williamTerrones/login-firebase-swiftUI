//
//  ContentView.swift
//  Shared
//
//  Created by William Terrones on 24/12/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    @State var show = false
    @State var status = UserDefaults.standard.value(forKey:"status") as? Bool ?? false
    
    var body: some View {
        
        NavigationView{
            
            VStack {
             
                if(self.status){
                    HomeView()
                } else {
                    
                    ZStack{
                        
                        NavigationLink(destination: SignUp(show: self.$show) , isActive:self.$show ){
                            Text("")
                        }.hidden()
                        
                        Login(show: self.$show)
                        
                    }
                    
                }
                
            }
            .navigationTitle("").navigationBarHidden(true).navigationBarBackButtonHidden(true)
            .onAppear{
                NotificationCenter.default
                    .addObserver(
                        forName:NSNotification.Name("status"),
                        object:nil,
                        queue: .main
                    ) {
                        (_) in
                        
                        self.status = UserDefaults.standard.value(forKey:"status") as? Bool ?? false
                        
                    }
            }
            
        }
        
    }
    
}
