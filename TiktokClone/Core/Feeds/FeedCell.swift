//
//  FeedCell.swift
//  TiktokClone
//
//  Created by 櫻井絵理香 on 2024/10/03.
//

import SwiftUI

struct FeedCell: View {
    let post: Int
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.pink)
                .containerRelativeFrame([.horizontal, .vertical])
                .overlay {
                    Text("Post \(post)")
                        .foregroundStyle(.white)
                }
            VStack {
                Spacer()
                HStack {
                    VStack(alignment: .leading) {
                        Text("carlos.sainz")
                            .fontWeight(.semibold)
                        Text("Rocket ship prepare for takeoff!!!")
                    }
                    .foregroundStyle(.white)
                    .font(.subheadline)
                    Spacer()
                    
                    VStack {
                        Button {
                            
                        } label: {
                            Image(systemName: "heart.fill")
                        }
                        
                        Button {
                            
                        }label: {
                            Image(systemName: "heart.fill")
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    FeedCell(post: 2)
}
