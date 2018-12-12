#include <stdio.h>
#include <rpc.h>
//#include <dlfcn.h>
#include "dynamic.h"
#include <windows.h>

//#include <linux.h>

int main() {
    printf("Hello, World!\n");

//    MessageBoxA(0,"FFF",0,0);
//    dlopen
    //显示调用动态库 兼容性各不相同。window .linux .
    /* h = dlopen("./lib/libmydynamic.dll", RTLD_NOW | RTLD_GLOBAL);
     if (!h) {
         printf("dlopen error:%s\n", dlerror());
         return -1;
     }

     module_pr = dlsym(h, "m_pr");
     if (dlerror() != NULL) {
         printf("dlsym m_pr error:%s\n", dlerror())

     }*/
    /*  HINSTANCE hModule = LoadLibrary("lib/libmydynamic.dll");
      if (hModule == NULL) {
          printf("not found dynamic.dll");
      } else {
          typedef int (__stdcall *calldynamicMethod)();
          calldynamicMethod myMethod = (calldynamicMethod) GetProcAddress(hModule, "dynamiccall");
          myMethod();
      }
  */
    return 0;
}