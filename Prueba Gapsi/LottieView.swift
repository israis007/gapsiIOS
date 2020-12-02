//
//  LottieView.swift
//  Prueba Gapsi
//
//  Created by Pirata Ram on 01/12/20.
//
import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    let animationView = AnimationView()
    var filename = "shopping"
    
    func makeUIView(context: UIViewControllerRepresentableContext<LottieView>) -> UIView {
        let view = UIView()
        
        let animation = Animation.named(filename)
        animationView.animation = animation
        
        animationView.play()
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor),
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor)
        ])
        
        return view
    
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
}
