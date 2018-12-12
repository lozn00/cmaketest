cmake_minimum_required(VERSION 3.12)
#make的变量是用()而cmake用{}
#https://cmake.org/cmake/help/v3.12/manual/cmake-language.7.html
project(CMakeTestC C)

set(CMAKE_C_STANDARD 99)
#输出控制台信息WARNING必须大写，
message("test")
message("test")
#和make一样虽然能换行但是实际上是没换号的\符号
message("te\
st")


#括号参数 3.0之前不支持
message([=[

a
b
luan


]=])
message("testforeach")
#不带引号的遍历循环测试
foreach (current
        arg1
        arg2
        arg3 ar\ g4_kongge#这里测试转义空格
        arg5
        #        ar\:zhuanyimaohao 冒号转义开发工具会出现不让重载
        )
    message("each ${current}")
endforeach ()
#多行注释
#[[
这是多行注释
不管你信不信，你不信就用cloin打开看看
]]

message("list foreach")
#列表变量创建
set(mylist 0 1 2 3 aa b c d e f)#创建mylist可循环列表
#列表 与continue用法 break用法 elseif
foreach (current ${mylist})
    if (${current} STREQUAL aa)
        message("ignore aa")
        continue()
    elseif (${current} STREQUAL d)
        message("break b")
        break()
    endif ()
    message("current ${current}")
endforeach ()
message("buildtype${BUILD_TYPE}")

set(tempvar aa)#创建一个变量

if (${tempvar} STREQUAL aa)
    message(" value is 333")
else ()
    message("not equal aa")
endif ()

#[[
set(intvar 1)
if (${intvar} == 1)
    message("int type =1")
endif ()
]]

#定义函数

#function(myfunc arg1 arg2 arg3,arg4,arg5,arg6)
function(myfunc arg1 arg2 arg3)#格式为function(函数名 参数名) endfunction()
    message("arg1 value is ${arg1} ,arg2 value ${arg2} arg3 value ${arg3}")
endfunction()
myfunc(nihao b c 1 g)#参数可以多传递但是不能少传递，而且传递参数是用空格隔开的
#定义函数的另外一种 宏，感觉差不多？？

macro(hong arg1 arg2)
    message("hongcall arg1 value ${arg1} arg2 value is ${arg2} ,arg3 value is  ${arg3}")
endmacro()
hong(hong1 hong2 hong3 hong4)#参数可以多传递但是不能少传递，而且传递参数是用空格隔开的
set(INDEX 1)
if (${INDEX})
    message("index 1 define INDEX")
endif ()
unset(INDEX) #可以测试注释和不注释测试是否删除成功。
if (${INDEX})
    message("test index 1 unset?")
endif ()
while (${INDEX} <10)
    message("while......")
endwhile ()
#死循环定义
#[[

while (TRUE)
message("while......")
endwhile()

]]


add_executable(CMakeTestC execute.c)