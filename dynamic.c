#include <stdio.h>
__declspec(dllexport) //导出函数
extern "C" void _declspec(dllexport)int dynamiccall() {
    printf("Hello, Test dynamic new... !\n");
    return 0;
}

extern "C" void _declspec(dllexport) void notimportcall(){

    printf("not import call dynamic ...")
}