//
//  VideoView.swift
//  In-Class Activity Pro IPhone Ch12 Playing Audio and Video
//
//  Created by Student Account on 11/28/23.
//
// Video source:  https://www.pexels.com/video/close-up-of-a-black-capped-chickadee-on-a-person-s-hand-9803926/

import SwiftUI
import AVKit

struct VideoView: View {
    @State var player: AVPlayer?
    var body: some View {
        VideoPlayer(player: player, videoOverlay: {
            VStack{
                Spacer()
                Text("Here is a chickadee")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .background(.black)
                Spacer()
                Spacer()
            }
        })
            .onAppear {
                guard let videoURL = Bundle.main.url(forResource: "nature-walk", withExtension: "mp4") else {
                    print ("Video file not found")
                    return
                }
                player = AVPlayer(url: videoURL as URL)
            }
    }
}

#Preview {
    VideoView()
}
