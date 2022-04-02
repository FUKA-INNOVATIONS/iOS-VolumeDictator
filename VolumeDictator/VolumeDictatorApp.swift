//
//  VolumeDictatorApp.swift
//  VolumeDictator
//
//  Created by FUKA on 2.4.2022.
//

import SwiftUI
import MediaPlayer


@main
struct VolumeDictatorApp: App {
    init() {
        MPVolumeView.setVolume(1.0)
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
    
}



extension MPVolumeView {
    static func setVolume(_ volume: Float) -> Void {
        let volumeView = MPVolumeView()
        let slider = volumeView.subviews.first(where: { $0 is UISlider }) as? UISlider

        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 0.01) {
            slider?.value = volume
        }
    }
}
