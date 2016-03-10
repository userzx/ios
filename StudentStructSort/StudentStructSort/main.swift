//
//  main.swift
//  StudentStructSort
//
//  Created by 张雄 on 16/2/27.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

import Foundation

struct Student{
    var name:String
    var englishScore:Float
    var mathScore:Float
    
    init(name:String,englishScore:Float,mathScore:Float){
        self.name = name
        self.englishScore = englishScore
        self.mathScore = mathScore
    }
    
    //student info string
    func toString()->String{
        return "姓名:\(self.name),数学:\(self.mathScore),英语:\(self.englishScore),平均成绩:\((self.avgStudent())/2)"
     }
    
    //print format string
    func printFormatString()->String{
        return "\(self.name)\t\t\(self.mathScore)\t\t\(self.englishScore)\t\t\(self.avgStudent())\t\t"
    }
    
    //get average value
    func avgStudent()->Float
    {
        return (self.mathScore+self.englishScore)/2
    }
}

// MARK: Create students append to Array
var studentList=[Student]()
var arrNames = ["王老师","蔡老师","I m e","刘老师","孟同学","马同学","范同学","程同学","陈同学"]
//
var stuZx=Student(name: "张  雄",englishScore: 100,mathScore: 100)
studentList.append(stuZx)
var rang = 0...8
rang.forEach { (i) -> () in
    studentList.append(Student(name: arrNames[i]
        , englishScore: Float(60+arc4random_uniform(40))
        ,mathScore: Float(60+arc4random_uniform(40))))
}

func quickSortByAvg(inout stuList:[Student], start:Int, end:Int,isAscend:Bool = true) {
    if (end - start < 2){
        return
    }
    //get middle index,Set a value as the original value
    let key = stuList[start + (end - start)/2]
    var left = start
    var right = end - 1
    let pKeyValue:Float = key.avgStudent()
    while (left <= right){
        if isAscend
        {
            if (stuList[left].avgStudent() < pKeyValue){
                left++
                continue
            }
            if (stuList[right].avgStudent() > pKeyValue){
                right--
                continue
            }
        }
        else
        {
            if (stuList[left].avgStudent() > pKeyValue){
                left++
                continue
            }
            if (stuList[right].avgStudent() < pKeyValue){
                right--
                continue
            }
        }
        let temp = stuList[left]
        stuList[left] = stuList[right]
        stuList[right] = temp
        left++
        right--
    }
    quickSortByAvg(&stuList, start:start, end:right + 1,isAscend:isAscend)
    quickSortByAvg(&stuList, start:right + 1, end:end,isAscend:isAscend)
}

// MARK: use ascend sort
quickSortByAvg(&studentList,start:0,end:studentList.count)
//quickSortByAvg(&studentList,start:0,end:studentList.count,isascend:false)

// MARK: Print all infos

for var i in 1...16{
    print("*",terminator: "")
    if(i==8)
    {
        print("IOS第一期就业班 (作者:张雄)，正序排序并输出信息", terminator: "")
    }
}
print("\n")
print("序号\t\t姓名\t\t英语\t\t数学\t\t平均成绩\t\t")
var index:Int = 1;
for stu:Student in studentList{
    print("\(index)\t\t"+stu.printFormatString())
    index++
}



