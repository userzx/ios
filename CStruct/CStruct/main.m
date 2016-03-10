//
//  main.m
//  CStruct
//
//  Created by 张雄 on 16/3/10.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

#import <Foundation/Foundation.h>

////结构体，其实我们可以创建它为一个类型
//struct Student{
//    int age;
//    char *name;
//};
//定义为类型，在使用结构体的时候，就不需要再在前面加struct
typedef struct {
    int age;
    char *name;
} Student;

//共同体
typedef union CharData{
    char ch;
    int8_t value;
} CharData;

typedef struct {
    uint8 blue,green,red,aplhe;//Uint是无符号的字符
} ColorSelf;

union ColorUnion {
    UInt32 colorInt;
    ColorSelf colors;
};
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //
        //struct Student stu={100,"json"};
//        stu.age = 100;
//        stu.name = "json";
//        Student stu = {19,"zx"};
//       
//        
//        printf("this student name is %s , age is %d \n",stu.name,stu.age);
//        
//        CharData data={56};
//        
//        printf("union is %c,%d \n",data.ch,data.value);
        
        int32_t colorInt = 0xFFFF0000;//int 存放高位在后面[00,00,FF,FF]
        union ColorUnion color;
        color.colorInt = colorInt;
        
        printf("aplhe is %d,red is %d,green is %d,blue is %d \n",color.colors.aplhe,color.colors.red,color.colors.green,color.colors.blue);
        
    }
    return 0;
}
