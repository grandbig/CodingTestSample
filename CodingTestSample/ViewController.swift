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

        let otherStringSample = OtherStringSample()
        otherStringSample.reverseRead()
        otherStringSample.replaceCharacter()

        let separateStringSample = SeparateStringSample()
        separateStringSample.separateString()
        separateStringSample.separateDecimalDigits()
        separateStringSample.separateLetters()
        separateStringSample.separateLowercaseLetters()
        separateStringSample.separatePunctuationCharacters()

        let extractStringSample = ExtractStringSample()
        extractStringSample.deleteFinalCharacter()
        extractStringSample.deleteFinalCharacter2()
        extractStringSample.deleteFinalCharacter3()
        extractStringSample.extractCharacter()
        extractStringSample.extractCharacter2()
        extractStringSample.offsetCharacter()

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

        // 正規表現
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

