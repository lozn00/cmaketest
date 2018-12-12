#include <dlfcn.h>
#include <stdio.h>//use NULL CONSTANT
//#include <stdio.h>
//这种加载方法 没有任何意义了, 而且也无法使用. #include dynamic.h"
int main(){
	printf("ensure that dynamic.so exist... \n");
	void* handle=dlopen("../lib/libmydynamic.so",RTLD_LAZY);
	if(handle==NULL){
		printf("file not exist !\n");
		return;
	}else{
		printf("found dynamic library exist try to load \n");
	}
	int (*dynamicmethod)();//method sign
	dynamicmethod=dlsym(handle,"dynamiccall");
	int result=dynamicmethod();
	printf("\n\nexec calldynamicresult: %d ",result);
	dlclose(handle);
	return 0;
}
