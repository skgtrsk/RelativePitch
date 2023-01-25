//
//  NoteChecker.swift
//  RelativePitch
//
//  Created by 坂口諒 on 2023/01/25.
//

import Foundation

class NoteChecker {
    
    var keyNote = "A"
    var questionNote = "A"
    
    var intKeyNote = 0
    var intQuestionNote = 0
    
    var relativePitchNumber = 0
    var degree = "R"
    
    func changeKeyNoteToNumber() {
        
        switch keyNote {
            case "A" :
                keyNote = "0"
            case "A#" :
                keyNote = "1"
            case "B" :
                keyNote = "2"
            case "C" :
                keyNote = "3"
            case "C#" :
                keyNote = "4"
            case "D" :
                keyNote = "5"
            case "D#" :
                keyNote = "6"
            case "E" :
                keyNote = "7"
            case "F" :
                keyNote = "8"
            case "F#" :
                keyNote = "9"
            case "G" :
                keyNote = "10"
            case "G#" :
                keyNote = "11"
        default:
            print("case questionNote error")
        }
        //String型をInt型に変換してintKeyNoteに代入
        if let safeKeyNote = Int(keyNote) {
            intKeyNote = safeKeyNote
        } else {
            print("intKeyNote error")
        }
    }
    
    func changeQuestionNoteToNumber() {
        switch questionNote {
            case "A" :
                questionNote = "0"
            case "A#" :
                questionNote = "1"
            case "B" :
                questionNote = "2"
            case "C" :
                questionNote = "3"
            case "C#" :
                questionNote = "4"
            case "D" :
                questionNote = "5"
            case "D#" :
                questionNote = "6"
            case "E" :
                questionNote = "7"
            case "F" :
                questionNote = "8"
            case "F#" :
                questionNote = "9"
            case "G" :
                questionNote = "10"
            case "G#" :
                questionNote = "11"
        default:
            print("case questionNote error")
        }
        
        if let safequestionNote = Int(questionNote) {
            intQuestionNote = safequestionNote
        } else {
            print("intQuestionNote error")
        }
    }

    func changeNumberToDegree() {
        switch relativePitchNumber {
            case 0 :
                degree = "R"
            case 1, -11 :
                degree = "♭9"
            case 2, -10 :
                degree = "9"
            case 3, -9 :
                degree = "♯9/♭3"
            case 4, -8 :
                degree = "3"
            case 5, -7 :
                degree = "4"
            case 6, -6 :
                degree = "#11/♭5"
            case 7, -5 :
                degree = "5"
            case 8, -4 :
                degree = "#5/♭13"
            case 9, -3 :
                degree = "6"
            case 10, -2 :
                degree = "♭7"
            case 11, -1 :
                degree = "7"
        default:
            print("case questionNote error")
        }
        
        if let safequestionNote = Int(questionNote) {
            intQuestionNote = safequestionNote
        } else {
            print("intQuestionNote error")
        }
    }
    
    func noteCheck() {
        switch relativePitchNumber {
            case 0 :
                print("R")
            case 1, -11 :
                print("♭9")
            case 2, -10 :
                print("9")
            case 3, -9 :
                print("m3")
            case 4, -8 :
                print("3")
            case 5, -7 :
                print("11")
            case 6, -6 :
                print("#11")
            case 7, -5 :
                print("5")
            case 8, -4 :
                print("#5")
            case 9, -3 :
                print("6")
            case 10, -2 :
                print("♭7")
            case 11, -1 :
                print("7")
            default:
                print("note check error")
        }
    }
    
}
