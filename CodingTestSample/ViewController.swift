//
//  ViewController.swift
//  CodingTestSample
//
//  Created by Takahiro Kato on 2018/10/23.
//  Copyright © 2018 Takahiro Kato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let stringSample = StringSample()
        stringSample.separateString()
        stringSample.separateDecimalDigits()
        stringSample.separateLetters()
        stringSample.separateLowercaseLetters()
        stringSample.separatePunctuationCharacters()
        stringSample.reverseRead()
        stringSample.deleteFinalCharacter()
        stringSample.deleteFinalCharacter2()
        stringSample.deleteFinalCharacter3()
        stringSample.extractCharacter()
        stringSample.extractCharacter2()
        stringSample.offsetCharacter()
        
        let arraySample = ArraySample()
        arraySample.ascSortArray()
        arraySample.ascSortArray2()
        arraySample.descSortArray()
        arraySample.maxInArray()
        arraySample.minInArray()
        arraySample.getSumArray()
        arraySample.filteredArray()
        arraySample.mappedArray()
        arraySample.compactMappedArray()
        
        let intSample = IntSample()
        intSample.changeToBinaryNumber()
        intSample.changeToOctalNumber()
        intSample.changeToHexadecimal()
        
        let regexSample = RegexSample()
        let alphabet = "title=ABCDE&body=FGHIJ"
        if regexSample.pregMatche(input: alphabet, pattern: "ABCDE") {
            print("match")
        } else {
            print("not match")
        }
        
        var hoge: [String] = []
        _ = regexSample.pregMatche(input: alphabet, pattern: "^title=.*&body", matches: &hoge)
        print(hoge)  // ["title=ABCDE&body"]
        
        let fuga = regexSample.pregReplace(input: alphabet, pattern: "^title=.*&body", with: "title=abcde&body")
        print(fuga)  // title=abcde&body=FGHIJ
    }
}

