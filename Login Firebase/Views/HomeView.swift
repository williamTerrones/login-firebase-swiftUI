//
//  Home.swift
//  Login Firebase
//
//  Created by William Terrones on 24/12/20.
//

import SwiftUI
import Firebase

struct HomeView: View {
    
    var body: some View {
        
        VStack{
            
            Text("Sesión iniciada")
            
            Button(action:{
                
                try! Auth.auth().signOut()
                UserDefaults.standard.set(false,forKey:"status")
                NotificationCenter.default.post(
                    name:NSNotification.Name("status"),object: nil
                )
                
            }){
                Text("Cerrar sesión").foregroundColor(.white).padding(.vertical).frame(width: UIScreen.main.bounds.width-50).background(Color("Color"))
            }.cornerRadius(25).padding(.top,25)
            
        }
        
    }
    
}
