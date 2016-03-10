//
//  main.swift
//  MultiplicationTables
//
//  Created by 张雄 on 16/2/27.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

import Foundation

for var i in 1...70
{
    print("*",terminator: "")
    if(i==35)
    {
        print("IOS 第一期就业班，九九乘法表，作者：张雄", terminator: "")
    }
    
}
print("")

for var row in 1...9
{
    for var column in 1...row
    {
        print("\(column)*\(row)=\(column*row) \t", terminator: "")
    }
    //new line
    print("")
}


