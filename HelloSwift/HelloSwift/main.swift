//
//  main.swift
//  HelloSwift
//
//  Created by 张雄 on 16/2/25.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

import Foundation
////first:Int
//let a:Int = 10;
//let b = 100;

//
//print(b)
//print(INT16_MAX)
//print(INT8_MAX)

////second: Float Double
//let f:Float=10.0
//print(f)
//print(sizeofValue(f))

////three: String
//let s = "Hello swift"
//
//var sCpy = s
//sCpy = "\(s),java,have \(10) year"
//
//sCpy = sCpy + "Start of 2003"
//sCpy += ",C"
//print(s)
//
//print(sCpy)

//var arrInt = [10,11,2,3]
//
//arrInt.append(2)
//
////Why is this not an Float array
//var arrDouble = [10,22,232,12.0]
//
//arrDouble.append(12)
//
//var arrString = [1,2,"zx"]
//
//arrString.append("shenzhou")
//
//var arr = [NSObject]()
//
//arr.append("I")
//
//arr.append("Like")
//
//arr.append("You")
//
//arr.append(10000)
//
//arr.append("Year")
//
//var arrThis = Array<NSString>()
//
//arrThis.append("xx")
//
//print(arrThis)
//
//print(arr)
//
//print(arrString)
//
//print(arrInt)
//
//print(arrDouble)

//var arrThis = Array<NSString>()
//
//arrThis.append("xx")
//
//print(arrThis)
//
//
//var arrOther = Array<String>()
//
//arrOther.append("xx")
//
//print(arrOther)
//
//
//
//var arrString = [String]()
//
//
//arrString.append("shenzhou")
//
//print(arrString)

//var dic = ["Name":"zx","Age":33]
//
////print(dic.endIndex)
////dic.removeAtIndex(dic.startIndex)
//dic.removeValueForKey("Name")
//dic["language"] = "Java"
//print(dic)
//
////print(dic["Name"]!)
//
//
//print(dic["Age"]!)
//
//var dicOther = [String:String]()
//
//dicOther["Age"] = "22"
//
//print(dicOther)
//
//var dicThing = [1:100,2:200,"Name":"dd"]
//
//print(dicThing[1]!)
//
//print(dicThing[2]!)

//let score =  85
//
//if score > 100 {
//    print("超出范围")
//}else if score >= 90 {
//    print("优")
//}else if score >= 80 {
//    print("良")
//}else if score >= 70 {
//    print("中")
//}else if score >= 60 {
//    print("及格")
//}else if score < 60 {
//    print("差")
//}
//
//switch score/10 {
//case 9 :
//    print("优")
//case 8 :
//    print("良")
//case 7 :
//    print("中")
//case 6 :
//    print("及格")
//default:
//    print("差")
//}

for var i in 1...70
{
    print("*", separator: "", terminator: "")
    if(i==35)
    {
        print("IOS 第一期就业班，九九乘法表，作者：张雄", separator: "", terminator: "")
    }
    
}
print("")

for var row in 1...9
{
    for var column in 1...row
    {
        print("\(column)*\(row)=\(column*row) \t", terminator: "")
    }
    print("")
}




func Partition(scores:[Double],begin:Int,end:Int)->Int{
    var key = scores[begin]
    var index:Int = begin
    for ArrayIndex in begin...end
    {
    }
    return 2
}




