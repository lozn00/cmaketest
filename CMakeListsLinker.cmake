cmake_minimum_required(VERSION 3.4.1) #这句话放到最前面 否则警告n多。
#cmake_minimum_required(VERSION 3.12) cygwindow 和 include语法需要定义    CMake 3.12 or higher is required.  You are running version 3.6.2
project(TESTPROJECT)


# c call c dynamic lib by  ccode




include_directories(otheheadfile) 

file(GLOB SRCS "${PROJECT_SOURCE_DIR}/jni/global/*.cpp")
add_executable(ccallcdynamicdllopen calldynamicbydllopen.c)
message("call dynamic by dlopen,ensure that this compilation environment is base linux!")
# The following code solves the dllopen undefined problem
target_link_libraries(ccallcdynamicdllopen ${CMAKE_DL_LIBS})



 # c call c dynamic lib
#[[
include_directories(otheheadfile) 

file(GLOB SRCS "${PROJECT_SOURCE_DIR}/jni/global/*.cpp")
add_executable(ccallcdynamic calldynamic.c)

# static need set_target_properties() but dynamic not need
link_directories(lib)#从 lib目录查找
# 设置第三方动态库属性（存储位置） armeabi-v7a
add_library(MYDYNAMIC
             SHARED
             IMPORTED)

set_target_properties(MYDYNAMIC  PROPERTIES IMPORTED_LOCATION ${PROJECT_SOURCE_DIR}/lib/libmydynamic.so)
target_link_libraries(ccallcdynamic MYDYNAMIC)


message("compile ccallcdynamic ....")
message("------------------------------------------------")
]]









 # cpp use c static lib
#[[
include_directories(otheheadfile) #import headfile link_directories也可以?

file(GLOB SRCS "${PROJECT_SOURCE_DIR}/jni/global/*.cpp")
add_executable(cppcallcstatic callstatic.cpp)
add_library(mystatic
        STATIC
        IMPORTED)
set_target_properties(mystatic
        PROPERTIES IMPORTED_LOCATION
        ${PROJECT_SOURCE_DIR}/lib/libmystatic.a)
target_link_libraries(cppcallcstatic mystatic)
message("compile cppcallcstatic ....")
message("------------------------------------------------")
]]





 # c use c static lib
#[[
include_directories(otheheadfile) #这个源文件和另外一个文件的根目录不是同一个，也可以达到识别效果。

file(GLOB SRCS "${PROJECT_SOURCE_DIR}/jni/global/*.cpp")
add_executable(callstatic callstatic.c)
add_library(mystatic
        STATIC
        IMPORTED)
set_target_properties(mystatic
        PROPERTIES IMPORTED_LOCATION
        ${PROJECT_SOURCE_DIR}/lib/libmystatic.a)
target_link_libraries(callstatic mystatic)
message("compile call staticlib.... c use c static lib")
message("------------------------------------------------")

]]





message("Linker Dynamic Or Static Over")





#-------------------------
#动态库
#link_directories(${PROJECT_SOURCE_DIR}/lib) #添加动态连接库的路径
#target_link_libraries(myexe -lmydynamic) #添加libmxnet.so 动态库直接添加就行了。

#--------------------------------------

#gcc指定静态库 https://www.cnblogs.com/lidabo/p/6206504.html
#set(PROJECT_SOURCE_DIR jni)
#aux_source_directory(jni DIR_SRCS)
#find_library(LIBHELLO_PATH hello jni/info)
#add_library(mydll SHARED jni/myjni.cpp)
#target_include_directories(myexe INTERFACE jni/info)#暂时不知道意义
#add_executable(myexe ${DIR_SRCS})
