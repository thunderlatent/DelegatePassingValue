//
//  SecondToFirst.swift
//  DelegatePassingValue
//
//  Created by Jimmy on 2021/1/2.
//

import Foundation

//MARK: - 這是一個協定，相關資訊可以看Protocol章節，這邊的用意是宣告一個協定，並且宣告這個協定有什麼方法，至於這個方法的內容則是由到時候遵從這個協定的人（類別）去做
protocol PassingValueDelegate {
    func displayRandomNumber(randomNumber:Int)
}
