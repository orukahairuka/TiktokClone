//
//  FeedView.swift
//  TiktokClone
//
//  Created by 櫻井絵理香 on 2024/10/03.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView {
            LazyVStack (spacing: 0){
                ForEach(0 ..< 10) { post in
                    Rectangle()
                        .fill(.pink)
                        .containerRelativeFrame([.horizontal, .vertical])
                        .overlay {
                            Text("Post \(post)")
                                .foregroundStyle(.white)
                        }
                }
            }
            .scrollTargetLayout()
        }
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
    }
}

#Preview {
    FeedView()
}
