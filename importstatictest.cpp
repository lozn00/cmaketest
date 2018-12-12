//
// Created by luozheng on 2018/12/5.
//
#include  <iostream>
#include "importstatictest.h"
#include "staticimport1.h"

int main() {
    printf("iosstream...");
    staticvoidcall();
// >gcc importstatictest.cpp -L. -static -lmystatic mystatic为当前目录的.a
}