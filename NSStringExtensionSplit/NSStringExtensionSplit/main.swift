//
//  main.swift
//  NSStringExtensionSplit
//
//  Created by 张雄 on 16/3/4.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

import Foundation

extension NSString{
    //separator isEmpty back characters string array
    func split(separator: String) -> [String] {
        var strArray = [String]()
        var selfStr = String(self)
        // characters init string array
        if separator.isEmpty {
            for ch in selfStr.characters{
                strArray.append(String(ch))
            }
        }
        else {
            //can find separator at selfStr
            while selfStr.rangeOfString(separator) != nil {
                let rang = selfStr.rangeOfString(separator)
                strArray.append(selfStr.substringToIndex(rang!.startIndex))
                selfStr = selfStr.substringFromIndex(rang!.endIndex)
            }
            //last add remain string
            strArray.append(selfStr)
        }
        return strArray
    }
}

//print my information
MyTools.printMyInfos("为NSString添加split功能", length: 20)

let str:NSString = ",df,sa,adf,ads,ffa,,sfasddf,ds"

print(str.split(""))
print("")

print(str.split(","))
print("")

print(str.split("a"))
print("")

print(str.split("ds"))
print("")


