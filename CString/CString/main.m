//
//  main.m
//  CString
//
//  Created by 张雄 on 16/3/10.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        //内存管理要非常清晰，不能越界
        char *str1 = "Hello";
        char *str2 = "C";
        char buf[100];
        //void *memset(void *s,int c,size_t n)
        //总的作用：将已开辟内存空间 buf 的首 n 个字节的值设为值 c。
        memset(buf, 0, 100);
        strcat(buf, str1);
        strcat(buf, str2);
        //strcat(str1, str2);
        
        printf("buf is %s,it's length is %ld,array length is %ld \n",buf,strlen(buf),sizeof(buf));
        
        sprintf(buf, "%d",100);
        printf("%s \n",buf);
        
        char *numStr = "101";
        int intStr =  atoi(numStr);
        printf("%d \n",intStr);
    }
    return 0;
}
