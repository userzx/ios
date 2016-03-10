//
//  main.swift
//  StringUsing
//
//  Created by 张雄 on 16/2/28.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

import Foundation

//let str = "Hello Swift"
//let strNs = str as NSString
//let strSwift = strNs as String
//
////print(str)
////print(strNs)
////print(strSwift)
//
//let strSub = strSwift.substringFromIndex(strSwift.startIndex.advancedBy(5))
//let strSubEnd = strSwift.substringToIndex(strSwift.startIndex.advancedBy(7))
//print(strSub)
//print(strSubEnd)

//let str = "Hello Swift"
//let strNs = str as NSString
//let strSwift = strNs as String
//
//let strSubMid = strSwift.substringWithRange(Range<String.Index>(start:strSwift.startIndex.advancedBy(2),end:strSwift.startIndex.advancedBy(4)))
//
//let strSubMiddle = strSwift.substringWithRange(strSwift.startIndex.advancedBy(2)...strSwift.startIndex.advancedBy(4))
//
//print(strSubMid)
//print(strSubMiddle)

let str = "Hello{dd} Swift"
let strNs = str as NSString
let strSwift = strNs as String

let strArray = str.characters.split(" ")

for str in strArray{
    print(String(str))
}
strArray.forEach { (str) -> () in
    print(String(str))
}
for (i,str) in strArray.enumerate(){
    print("\(i+1)==="+String(str))
}

var tempStr:String = ""

str.characters.forEach { (ch) -> () in
    switch ch{
        case "{":
        tempStr.removeAll()
        case "}":
        print(tempStr)
        default:
        tempStr += String(ch)
    }
}

let smail = "👨‍👨‍👧‍👦♧"

print(smail)



