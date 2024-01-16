//
//  ReelModel.swift
//  InstReels
//
//  Created by Alisa Serhiienko on 15.01.2024.
//

import SwiftUI
import AVKit

struct Reel: Identifiable {
    var id = UUID()
    var player: AVPlayer
    var mediaFile: Media
}
