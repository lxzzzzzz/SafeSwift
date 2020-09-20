//
//  Collection+Extension.swift
//  SafeSwift
//
//  Created by 李小争 on 2020/9/20.
//

public extension Collection {
    /// SwifterSwift: Safe protects the array from out of bounds by use of optional.
    ///
    ///        let arr = [1, 2, 3, 4, 5]
    ///        arr[safe: 1] -> 2
    ///        arr[safe: 10] -> nil
    ///
    /// - Parameter index: index of element to access element.
    subscript(safe index: Index) -> Element? {
        // https://stackoverflow.com/a/30593673/25329186
        return indices.contains(index) ? self[index] : nil
    }
}
