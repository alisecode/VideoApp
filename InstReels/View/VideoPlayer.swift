//
//  VideoPlayer.swift
//  InstReels
//
//  Created by Alisa Serhiienko on 15.01.2024.
//

import SwiftUI
import AVKit

struct VideoPlayer: UIViewControllerRepresentable {
    var player: AVPlayer
    
    func makeUIViewController(context: Context) -> AVPlayerViewController {
        let controler = AVPlayerViewController()
        controler.player = player
        controler.showsPlaybackControls = false
        controler.videoGravity = .resizeAspectFill
        
        return controler
    }
    
    func updateUIViewController(_ uiViewController: AVPlayerViewController, context: Context) {
        //
    }
}

