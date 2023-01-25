//
//  SoundPlayer.swift
//  RelativePitch
//
//  Created by 坂口諒 on 2022/10/14.
//

import UIKit
import AVFoundation

class SoundPlayer: NSObject {

    var music_player: AVAudioPlayer!
    
    func musicPlayer(){
        do{
            //var randomNote = "B"
            
            let noteArray: [String] = ["A", "A#", "B", "B#", "C", "C#", "D", "D#", "E", "E#", "F", "F#", "G", "G#"]
            var randomNote = "A"
            if let value = noteArray.randomElement(){
                randomNote = value  //randomNoteにランダムな音名を入れる
            }

            let note = NSDataAsset(name: "\(randomNote)")!.data   // 音源の指定
            music_player = try AVAudioPlayer(data: note)   // 音楽を指定
            music_player.play()   // 音楽再生
        } catch {
            print("エラー発生.音を流せません")
        }
    }
    
}
