//
//  main.swift
//  NSStringSplit
//
//  Created by 张雄 on 16/2/29.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

import Foundation

extension NSString{
    func split(spe:String)->[String]{
        var resultArr = [String]()
        let resultStr = self as String
        resultArr=resultStr.componentsSeparatedByString(spe)
        return resultArr
    }
}

let testStr:NSString = "xdfdasfds dd ddd d "
testStr.split(" ")

print(testStr.split(" "))

