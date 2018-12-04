#include <stdio.h>
__declspec(dllexport) //导出函数
int dynamiccall() {
    printf("Hello, Test dynamic new... !\n");
    return 0;
}
void notimportcall(){

    printf("not import call dynamic ...")
}