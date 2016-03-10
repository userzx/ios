//
//  PrintMyInfo.swift
//  NSStringExtensionSplit
//
//  Created by 张雄 on 16/3/4.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

import Foundation

// self using tools print work message
public class MyTools {
    //print my information
    public static func printMyInfos(infos: String , length: Int) {
        for i in 1...length/2 {
            print("*",terminator: "")
            if i == 10
            {
                print("IOS第一期就业班 (作者:张雄)，\(infos)", terminator: "")
            }
        }
        print("\n")

    }
}
