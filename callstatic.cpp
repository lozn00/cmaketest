#include <iostream>
//C++ call c static lib must use extern "C" wrap include code
extern "C"{
#include "static.h"
}
using namespace std;
int main(){
cout<<" cpp will call static lib from static.h"<<endl;
//如果是 c调用c++,那么只能是c++使用extern "C"定义自己的声明文件 不然无法实现调用.

staticcall();
}
