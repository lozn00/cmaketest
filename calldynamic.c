#include "static.h"
#include <stdio.h>
	int main(){
		printf("will call dynamic lib from dynamic.h \n");
		int result=dynamiccall();
		printf("call dynamic result %d \n",result);
		return 0;
	}
	
/*
描述有误,不应该叫调用静态库,而应该叫cmake直接引入 动态库 ,引入类似于分离,so动态库可以删掉照样能执行.
*/
