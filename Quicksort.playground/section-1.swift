// Playground - noun: a place where people can play

import UIKit

func quicksort<T: Comparable>(var list: [T]) -> [T] {
    if list.count <= 1 {
        return list
    }
    
    let pivot = list.removeAtIndex(0)
    return quicksort(list.filter { $0 <= pivot }) + [pivot] + quicksort(list.filter { $0 >  pivot })
}

let list: [Int] = [1, 80, 9,778, 110, 42, -70, 0, 3, 4, 5, 2, 2, 1, 0, 1]
let sortedList = quicksort(list)

let strings = ["a", "e", "d", "a", "e", "b", "a", "f", "e"]
let sortedStrings = quicksort(strings)

let strings2 = ["Alvin", "Kevin", "Thomas", "Gerald"]

let sortedStrings2 = quicksort(strings2)
