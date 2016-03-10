//
//  Hello.m
//  CFunctions
//
//  Created by 张雄 on 16/3/9.
//  Copyright © 2016年 shenzhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Header.h"

void printHello(char *name){
    printf("Hello Object-C at %s\n",name);
}

int max(int a,int b){
    return  a > b ? a : b;
}
