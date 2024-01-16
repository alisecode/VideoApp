//
//  MainView.swift
//  InstReels
//
//  Created by Alisa Serhiienko on 15.01.2024.
//

import SwiftUI

struct MainView: View {
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    @State var currentTab = "Reel"
    
    enum Tab: String, CaseIterable {
        case search = "Search", reel = "Reel", home = "Home"
        
        var image: String {
            switch self {
            case .home: "house.fill"
            case .search: "magnifyingglass"
            case .reel: "play.rectangle"
            }
        }
    }

    
    var body: some View {
        VStack(spacing: 0) {
            TabView(selection: $currentTab) {
                ForEach(Tab.allCases, id: \.self) { tab in
                    
                    if tab == .reel {
                        ReelView()
                            .tag(tab.rawValue)
                    } else {
                        Rectangle()
                            .fill(Color(uiColor: .systemGray6))
                            .frame(width: 300, height: 500)
                            .clipShape(RoundedRectangle(cornerRadius: 12))
                            .overlay {
                                Text(tab.rawValue)
                            }
                            .tag(tab.rawValue)
                    }
                    
                }
            
            }
            
            HStack(spacing: 0) {
                ForEach(Tab.allCases, id: \.self) { tab in
                    makeTabBarButton(for: tab)
                }
            }
        }
    }

}

extension MainView {
    private func makeTabBarButton(for tab: Tab) -> some View {
        Button {
            withAnimation { currentTab = tab.rawValue }
        } label: {
            Image(systemName: tab.image)
                .resizable()
                .renderingMode(.template)
                .foregroundStyle(.gray)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26, height: 26)
                .padding(.top, 16)
            .frame(maxWidth: .infinity)
        }
    }
}

#Preview {
    MainView()
}

