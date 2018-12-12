//
// Created by luozheng on 2018/12/5.
//

#include "myjni.h"
#include "info/myinfo.h"
#include <iostream>
#include <algorithm>
#include "../static.h"
#include "cn/qssq666/other.h"//找其他父目录文件夹

int main() {
    printf("hello c++\n");
    std::string signs = "abcDEFGHIJKLMN";
    transform(signs.begin(), signs.end(), signs.begin(), toupper);//大小写转换。
    printf("str result %s", signs.c_str());
    callheadfile();
    staticcall();
    return 0;
}

void callheadfile() {
    printf("implemention other.h");
}