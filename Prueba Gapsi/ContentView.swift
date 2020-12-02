//
//  ContentView.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//

import SwiftUI
import Lottie

struct ContentView: View {
    @State var showNext = false
    
    var body: some View {
        Group{
            if showNext {
                Shopping()
            } else {
                SplashScreen()
            }
        }
        
    }
}

struct SplashScreen : View {
    var body: some View {
        VStack {
            AnimatedView()
        }
    }
}


struct AnimatedView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> AnimationView {
        let view = AnimationView(name: "shopping", bundle: Bundle.main)
        
        //on Complete...
        view.play()
        
        return view
    }
    
    func updateUIView(_ uiView: AnimationView, context: Context) {
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
