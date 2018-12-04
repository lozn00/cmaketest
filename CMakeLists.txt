project(TESTPROJECT)

#一般习惯静态库是.a 动态库是.so .obj 中间模板文件
set(GENEREATE_METHOD program) # program  dynamic static
cmake_minimum_required(VERSION 3.12)

#生成程序步骤，不是通过点击cmake的刷新执行程序，而是通过build，生成，如生成dll, exe 动态的则是dll
if (${GENEREATE_METHOD} STREQUAL dynamic)
    include(dynamic.cmake)

    #    GET_TARGET_PROPERTY
    #        INSTALL() 其实就是拷贝文件
    #    SET_TARGET_PROPERTIES (dynamic PROPERTIES OUTPUT_NAME "dynamic")#可以修改成另外一个名字输出
elseif (${GENEREATE_METHOD} STREQUAL static)
    include(static.cmake)

elseif (${GENEREATE_METHOD} STREQUAL program)
    include(execute.cmake)

else ()
    message("unknow type")
endif ()

#include(execute.cmake)