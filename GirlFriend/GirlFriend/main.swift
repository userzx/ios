//
//  main.swift
//  GirlFriend
//
//  Created by 张雄 on 16/3/3.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

import Foundation


//common Tools
class SelfTools {
    static func randomName(minLength:UInt32,changLength:UInt32)->String{
        var randomName:String = ""
        (1...minLength).forEach({ (index) -> () in
            randomName += String(Character( UnicodeScalar(65 + arc4random_uniform(26)))
            )
        })
        
        if changLength > 0{
            (0...(arc4random_uniform(changLength))).forEach({ (index) -> () in
                randomName += String(Character( UnicodeScalar(65 + arc4random_uniform(26)))
                )
            })
        }
        return randomName
    }
}


public class GrilFriend {
    private var _name:String
    private var _age:Int
    
    init(name:String,age:Int)
    {
        self._age = age
        if name.isEmpty{
            self._name = SelfTools.randomName(8,changLength:3)
        }
        else{
            self._name = name
        }
        if age < 18 {
            self._age = 18 + Int(arc4random_uniform(12))
        }
    }
    
    //name mast have value
    public var name:String{
        get{
            return self._name
        }
        set{
            if newValue.isEmpty{
                self._name = SelfTools.randomName(8,changLength:3)
            }
            else{
                self._name = newValue
            }
        }
    }
    //age mast >18
    public var age:Int{
        get{
            return self.age
        }
        set{
            if newValue < 18 {
                self._age = 18 + Int(arc4random_uniform(12))
            }
        }
    }
    //print infos
    public func printFormatString()->String{
        var fromatStr:String = ""
        if arc4random_uniform(2) > 0{
        let datingPerson = GrilFriend(name: "",age: 0)
        fromatStr="\(_name)\t\t\t\t\(_age)\t\t\t\t\(Shopping())\t\t\t\t\(Dating(datingPerson))"
        }
        else{
            fromatStr="\(_name)\t\t\t\t\(_age)\t\t\t\t\(Shopping())\t\t\t\tnot date"
        }
        return fromatStr
    }
    // only use dating gril
    public func Dating(person:GrilFriend)->String{
        return "Dating \(person.name)!"
    }
    //gril online shopping
    public func Shopping()->Int{
        return Int(arc4random_uniform(2000))
    }
}


var myGrils = [GrilFriend]()
myGrils.append(GrilFriend(name:"吴 钰 欣",age: 22))

(1...999).forEach { (index) -> () in
    myGrils.append(GrilFriend(name:"",age: 0))
}

for var i in 1...70{
    print("*",terminator: "")
    if(i==35)
    {
        print("IOS第一期就业班 (作者:张雄)，1000个女朋友输出信息", terminator: "")
    }
}
print("\n")

print("序号\t\t\t\t姓名\t\t\t\t\t年龄\t\t\t\t消费\t\t\t\t约会\t\t\t\t")
for (index,gril) in myGrils.enumerate(){
    print("\((index+1))\t\t\t\t"+gril.printFormatString())
}

