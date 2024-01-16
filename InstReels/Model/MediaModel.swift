//
//  MediaModel.swift
//  InstReels
//
//  Created by Alisa Serhiienko on 15.01.2024.
//

import Foundation

struct Media: Identifiable {
    var id = UUID().uuidString
    var url: String
    var title: String
    var isExpanded = false
}

extension Media {
    static var previews: [Self] {
        [
            Media(url: "Reel2", title: "Alise in the Wonderland"),
            Media(url: "Reel3", title: "GitHub"),
            Media(url: "Reel4", title: "First steps in dev world"),
            Media(url: "Reel5", title: "Become a programmer without a degree")
        ]
    }
}
