//
//  main.m
//  CTypes
//
//  Created by 张雄 on 16/3/4.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        #pragma mark C的整形
        /* 受制于平台限制，他们的最大值可能会变化，
         int
         long
         */
        //在使用的时候，够用就行，没必要使用占位多的类型。
//        int32_t a = 10;
//        int64_t b = 100;
//        
//        printf("a=%d,b=%lld\n",a,b);
//        
//        printf("a is int32_t sizeof a is %lu\n",sizeof(a));
//    

        #pragma mark C的浮点类型数据
//        float f = 3.14;
//        double fd = 3.14;
//        
//        printf("f=%f,size is %ld,fd=%f,size is %ld",f,sizeof(f),fd,sizeof(fd));
//        
        #pragma mark char 类型和int8_t 同个类型
//        char ch = 'B';
//        int8_t chi = 'b';
//        printf("char =%c,int8_t 显示 =%c\n",ch+32,chi);
        #pragma mark 字符串使用方式
//        char *str = "Hello 3 8 !";
//        printf("string is %s\n",str);
//        printf("string first char is %c\n",str[0]);
        #pragma mark 数组使用
        int intArr[] = {1,2,3,4};
        printf("%d\n",intArr[0]);
        printf("%d\n",intArr[1]);
        printf("%d\n",intArr[2]);
        printf("%d\n",intArr[3]);
        int intOther[8];
        intOther[0]=1;
        intOther[1]=10;
        char strArr[] = "Hello Word";
        char string[10];
        //完善的时候可以添加上初始化值，当字符串输出碰到0的时候就认为是结束。
        memset(string, 0, 10);
        string[0]='H';
        string[1]='E';
        string[2]='L';
        
        string[5]='H';
        printf("%s\n",string);
    }
    return 0;
}


