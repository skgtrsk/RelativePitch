//
//  SoundEffectPlayer.swift
//  RelativePitch
//
//  Created by 坂口諒 on 2023/01/25.
//

import UIKit
import Foundation
import AVFoundation

class SoundEffectPlayer: NSObject {

    let successData = NSDataAsset(name: "successSound")!.data   // 音源の指定
    var successPlayer: AVAudioPlayer!
    // 音楽を再生
    func successSoundPlayer(){
        do{
            successPlayer = try AVAudioPlayer(data:successData)   // 音楽を指定
            successPlayer.play()   // 音楽再生
        }catch{
            print("エラー発生.音を流せません")
        }

    }
    // 音楽を停止
    func stopSuccessMusic (){
        successPlayer?.stop()
    }
    
    let failureData = NSDataAsset(name: "failureSound")!.data   // 音源の指定
    var failurePlayer: AVAudioPlayer!
    // 音楽を再生
    func failureSoundPlayer(){
        do{
            failurePlayer = try AVAudioPlayer(data:failureData)   // 音楽を指定
            failurePlayer.play()   // 音楽再生
        }catch{
            print("エラー発生.音を流せません")
        }

    }
    // 音楽を停止
    func stopFailureMusic (){
        successPlayer?.stop()
    }
}
